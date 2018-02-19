package org.happy.poor.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

/**
 * net.siriussoft.uae.common.config.AppEnvConfig
 * 
 * @project UAE-Front-eService
 * @author Siriussoft. Co
 * @create 2014.12.31 14:59:31
 * @version
 */
@Configuration
@PropertySource("classpath:config/config.properties")
public class AppEnvConfig {

	@Value("${app.encoding}")
	private String appEncoding;

	@Value("${app.home}")
	private String appHome;

	@Value("${app.upload.maxSize}")
	private String appUploadMaxSize;

	@Value("${app.upload.maxInMemorySize}")
	private String appUploadMaxInMemorySize;

	@Value("${image.file.upload.path}")
	private String imageFileUploadPath;

	@Value("${attach.file.upload.path}")
	private String attachFileUploadPath;

	/**
	 * Web application's encoding
	 * 
	 * @return
	 */
	public String getAppEncoding() {
		return appEncoding;
	}

	/**
	 * Web application's home directory
	 * 
	 * @return
	 */
	public String getAppHome() {
		return appHome;
	}

	/**
	 * Web application's file upload maximum size
	 * 
	 * @return
	 */
	public String getAppUploadMaxSize() {
		return appUploadMaxSize;
	}

	/**
	 * Web application's file upload maximum memory size
	 * 
	 * @return
	 */
	public String getAppUploadMaxInMemorySize() {
		return appUploadMaxInMemorySize;
	}

	/**
	 * Location path for uploading image files
	 * 
	 * @return
	 */
	public String getImageFileUploadPath() {
		return imageFileUploadPath;
	}

	/**
	 * Location path for uploading attached files
	 * 
	 * @return
	 */
	public String getAttachFileUploadPath() {
		return attachFileUploadPath;
	}

	/**
	 * Setting properties placeholder configuration
	 * <p>
	 * Target Property : config.properties
	 * </p>
	 * @return
	 */
	@Bean
	public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
}
