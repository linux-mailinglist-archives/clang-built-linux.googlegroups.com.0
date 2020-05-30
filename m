Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVEYY73AKGQE4GKPTTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5467B1E8D4E
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 05:00:38 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y16sf1106180pfe.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 20:00:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590807637; cv=pass;
        d=google.com; s=arc-20160816;
        b=oR27WOfdEr9dPwYw7gf5tbe5F1NDXInLbXQvvMDaumSkuv+mrD2YuiSG02ubWp5WlL
         eq2cRUQvt7aRuCVEPMOIdofnsIYwgHcpoImcJaYkj3Q5YvpAsr/hq/UuTplkT0w29ZKS
         IUtQDan3ILvH44ydeyWCx0B62r8tOjz9ysGIrCfdICpyRKsydzg/AQuz9GxMatMJ4gHK
         Yosfqo7S3iIDfeRt49Ch+ikXirJTzoiBGqBE/+YtG0y6CAGWUYOcPjHKlD28URVVHmk6
         nF+9qLqAXFED3zChcCBzEGyE93F6gDaso508sxaBAw3tg2W+Jv/JFnVbwqNiwno/iHQK
         Uoig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vMf/eVsJw2b+5MI5sqa3Y1J9m1zJGlGX4a3yiW+fVmc=;
        b=Ut9m8K1daIQ4lZL2RskeX6Nc27ALdFtcBvnNfMSvQu5nUtuwyNrR8yGnhQwHgp2jFF
         wZwN5bSsHjBYFy3m4q4gnGAENGn3F1k4HnyVuO05KD6He3gIOiqJiFMLppOZQe4xiLqv
         3p/JahMcwHr4DHG/7vUApLmrpQ6vwCEzG9OURdsQkQgdTDnWozWGHqhI8mcbufXI9nWY
         3gM4zfD3YK73M4ExYxcMC79Otp10Kyac5kHV5PrzS8FXHzLz7BbowHJ4SVQF7h9KsK8T
         iyRS9Q3BvC3aEw1i3T5NZHVmu/wcEqpNC2KBRv/q3kRVlgJsTwdpKQz5FOayqJMVdkiH
         Uj5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwG1wnMp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vMf/eVsJw2b+5MI5sqa3Y1J9m1zJGlGX4a3yiW+fVmc=;
        b=BJp+rNG3V3noYuB4A/6IIz5YQHR6OpjsUx8dK9MTlye2FdyAoIPKDMQqexXommGfEf
         8CJET3FvydicnrBOzqdvSlQ0Isq5vpPT90zoZoBIe7OMRRdM5pl0uWGbjStbwkpX7X/G
         bNIBMl1xDwEotd2UU2DFH7Uu/Qc25Ys/Rd+IP6f1dksQPGe3v6aRG9duz4lIylukonoX
         uQHvDl3Ci7MZ48lDUE9g1uGzy4xfu0y1Z9flRV7/aKnIY8Q2zX/bIUl6BMEXxyoVFblN
         rFIhC4a66UaBvnK8+Vo0b9lFGbhc3bC5wKmfsFIGnS+udGRmK4Ij5l0xAtkfLG8aGxAY
         b5NQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vMf/eVsJw2b+5MI5sqa3Y1J9m1zJGlGX4a3yiW+fVmc=;
        b=pOrjgLqHLfsr6eYtp6ZLjWTbG783kIr//WoTacMYbhbScRzRj5faG5InlPF3NQzFlw
         cPRxDapcaipR8IeRk4s4tbDxBf5rmWonHau+OUq0p0jIjxhUMzjNGlVoVWXdu7md8ZoK
         cjodhEaMFJTUkhbzzcmQh5husTfLqjS4lEd8Jf6mEFwibhFEIc+E4fT2Dc/HpgLNFNC7
         m357FKhomn5lKhQQVU8S1iaJkentvsK6wRK1bCsJDGADIZ4aeSejSGf6JVpytLSNzvwn
         sGqO01vyofx9/rHoBjbcp2FYM11xMVa+IDiDEQTZD7j+RuUD/2MDpr/blGwBc6NdurAu
         q+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vMf/eVsJw2b+5MI5sqa3Y1J9m1zJGlGX4a3yiW+fVmc=;
        b=CICjGiQ58S1tBYYKYibXtNcIkEzE/4EkqUNV9xZTcp+yXUOnNzERk7MxlWwAy7HEmc
         ONUXn5nEdWxXV9TXfrqQrfZ4J+B7Ezo5rk1FhYcd3lXdYfhQh2472PtPl3MgdvY7jBdo
         b7F6ie0ZzSbWlKL+HMg2SH4WsHiHvV4U8es1BhhLcUO7uGi6rhQqGOdvudx4hHSAoFp2
         AR37YfiJHXP8oPud/+vVDqjNoVM/Mjt6LFQxUoASS5Sgw6qcsndQKMk5o++M3VO2ICv/
         91zJJsbHg8iH0aRHdwhgm405K18S1ifMtw4wDYyyXG/gR+3LmLQiWdbDYeTwHBi1uLst
         sfeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IQi6vjwFQOPhv2RuWaAF4wk8P06Qf4r1IcPHSCSnLIOVAljou
	nWGYcw56YzKQ4hMl6sb0iFk=
X-Google-Smtp-Source: ABdhPJybgFdFV8HpCTbA2rkuzP9UOhXVTziSZXNFVW1Rg9w5D4vp7BRkxoRcUcLDdftmpaBzsO4P8g==
X-Received: by 2002:a63:4182:: with SMTP id o124mr10740379pga.195.1590807636895;
        Fri, 29 May 2020 20:00:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:63d0:: with SMTP id n16ls2547765pgv.6.gmail; Fri, 29 May
 2020 20:00:36 -0700 (PDT)
X-Received: by 2002:a63:33c6:: with SMTP id z189mr11279420pgz.426.1590807636393;
        Fri, 29 May 2020 20:00:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590807636; cv=none;
        d=google.com; s=arc-20160816;
        b=fYNxPSFSpPo9GukpV6kBw6Asy78ExHr/hm4fHSJkMVknYUpWl/CFUAdJPXLC6Efhi0
         28P4ZOG1LNpFEni7bcJ1tMQL0JE/yDt8fgl1aKIhJm99d51zW1BLK3Fu+dw+4rMcAC2s
         TUFUz+aJsuUxXnMAGNg2Wbq196We5U7RfMlZF6c5QXvp5CqUeONIeqt1qxhEaErqSNm1
         Vgiq9XcUAiWPJcfZZl+9v4rpZmTLlHFMQvOboHoXqwjPvWDh+AK8l2u61AyQvuNjz+FS
         BWAxPhSX1+IHg+PSTwNMKDgau+8CMHQklG/FKjQlKFjmTvKKNPKTB1L8Fix6fNhb5s5O
         BuEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YMRN0wSsDj4YeK0mPPFUdkTPLMlDL25YvZpi9MUfAXY=;
        b=0YD3wnGLLgBlz7mHLyBItBUB16RAsfvmXeK/93JOoJBhK7HjDrEoDRKkVWnA3Wypmz
         r9peSIcEe/pSWjEF0+mbxPVdsManpZn/DqlWaYtd2V6iaJDm0ECOcwv+zDAdeHOz1Rcd
         TmYnZblhzDWYL0JU/qncVljyq+fF5kJLJ+czSL3K8/Po7yYOXPPRPMCRqrmzdakrMHgI
         JzcV++HmXbJ3/3PIMKMu1h0g/wcTKKbLovbaczGgANoJVf4iF+IzieYVTOMZlYGOEu6h
         ejaqn9oWPXf9Dhno6amEzl2tT9ypy9Y0OB5JwRE/jTGZ6mAnPGPxzn+0SiiPZgdc6AWV
         ZcRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwG1wnMp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id q12si359412pfu.4.2020.05.29.20.00.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 20:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p30so765472pgl.11
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 20:00:36 -0700 (PDT)
X-Received: by 2002:a63:a51b:: with SMTP id n27mr11250321pgf.40.1590807636020;
        Fri, 29 May 2020 20:00:36 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t12sm649218pjf.3.2020.05.29.20.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 20:00:35 -0700 (PDT)
Date: Fri, 29 May 2020 20:00:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 7/9] staging: media: atomisp: fix enum type mixups
Message-ID: <20200530030033.GD1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-7-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-7-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PwG1wnMp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Fri, May 29, 2020 at 10:00:29PM +0200, Arnd Bergmann wrote:
> Some function calls pass an incorrect enum type:
> 
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:858:16: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
>         gp_device_rst(INPUT_SYSTEM0_ID);
>         ~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:860:19: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
>         input_switch_rst(INPUT_SYSTEM0_ID);
>         ~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:876:27: error: implicit conversion from enumeration type 'input_system_cfg_flag_t' to different enumeration type 'input_system_connection_t' [-Werror,-Wenum-conversion]
>                 config.multicast[i]              = INPUT_SYSTEM_CFG_FLAG_RESET;
>                                                  ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1326:32: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
>         input_selector_cfg_for_sensor(INPUT_SYSTEM0_ID);
>         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1329:19: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
>         input_switch_cfg(INPUT_SYSTEM0_ID, &config.input_switch_cfg);
>         ~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
> 
> INPUT_SYSTEM0_ID is zero, so use the corresponding zero-value
> of the expected types instead.
> 
> Fixes: a49d25364dfb ("staging/atomisp: Add support for the Intel IPU v2")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Huh weird that I did not see this warning but you do randconfigs so
that's expected.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  .../pci/hive_isp_css_common/host/input_system.c        | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> index 2114cf4f3fda..aa0f0fca9346 100644
> --- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> +++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> @@ -855,9 +855,9 @@ input_system_error_t input_system_configuration_reset(void)
>  
>  	input_system_network_rst(INPUT_SYSTEM0_ID);
>  
> -	gp_device_rst(INPUT_SYSTEM0_ID);
> +	gp_device_rst(GP_DEVICE0_ID);
>  
> -	input_switch_rst(INPUT_SYSTEM0_ID);
> +	input_switch_rst(GP_DEVICE0_ID);
>  
>  	//target_rst();
>  
> @@ -873,7 +873,7 @@ input_system_error_t input_system_configuration_reset(void)
>  
>  	for (i = 0; i < N_CSI_PORTS; i++) {
>  		config.csi_buffer_flags[i]	 = INPUT_SYSTEM_CFG_FLAG_RESET;
> -		config.multicast[i]		 = INPUT_SYSTEM_CFG_FLAG_RESET;
> +		config.multicast[i]		 = INPUT_SYSTEM_DISCARD_ALL;
>  	}
>  
>  	config.source_type_flags				 = INPUT_SYSTEM_CFG_FLAG_RESET;
> @@ -1323,10 +1323,10 @@ static input_system_error_t configuration_to_registers(void)
>  	} // end of switch (source_type)
>  
>  	// Set input selector.
> -	input_selector_cfg_for_sensor(INPUT_SYSTEM0_ID);
> +	input_selector_cfg_for_sensor(GP_DEVICE0_ID);
>  
>  	// Set input switch.
> -	input_switch_cfg(INPUT_SYSTEM0_ID, &config.input_switch_cfg);
> +	input_switch_cfg(GP_DEVICE0_ID, &config.input_switch_cfg);
>  
>  	// Set input formatters.
>  	// AM: IF are set dynamically.
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530030033.GD1367069%40ubuntu-s3-xlarge-x86.
