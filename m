Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJ5S3D5AKGQE6ZZJNIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC7C25F964
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 13:27:36 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id u18sf6669141ybu.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 04:27:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599478056; cv=pass;
        d=google.com; s=arc-20160816;
        b=jqQy5ek65H3IV3t+p1dO02qdFceuErEVhQG4KLp6yzYXmM6Z9+yBaGNwlnJLelHsVh
         /r6wyBYni3CobDKHYWUcTglES2VJvkCDPkcvtwykYJJZlHyYO6Zwq18SrqZW3ki0/w+8
         jwYLRYVoUs8YyCezGWJyo+GOfT7Gq41vpcRwdCLzo9jlPWD0KnMt8q++5QQwFjgeuQtE
         7rQXnbZuJ9JDTAYU0SyQCi/FVvxxGSSs0Mt+c2qTrnxLV2mkGz7oFFisf9wCnkhcvBuG
         bE4Sexr0sO/18//6PRWBcve454goVOmg9cUdl3EIcFtolqzIb+ODjyRzqEb5jLUFUmJX
         sPCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ihFKuh9H9LqGG/S761Dk85YZ88JsijfZv1YHMhA0Gs8=;
        b=yA8aMD4l1wZMcYIVjIs0ZJIi79wglS2o5YPGCZjwUlZsgM+aeVkLfIN33dQV+j69Xf
         KA+GubNo6bNPyYjFEMLZXKZ9MFG/YITMz3dhz4sVEbfhDo4Wn4Cu+MCgwy8+1ZYEEIGL
         Ih3xu08VsxFkQw1zwWSKy4vuwcoFKhEUQCl9hMclaKL0WSdgsSzobL8hgJ1ntKiVCDA6
         iWwukqvHbJY2i8aRWgMXfE/s1VEbJUV3fG5+a2LyQDF9n9hI63ZYciMa2+K90U7P0eV8
         sBj0Gl9/ZHuKpq53pMkxggAmTJT8+6m74p/C8BpLpOr8CN2Ja7XhDwsdf9vaLElDDdL3
         sRKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ihFKuh9H9LqGG/S761Dk85YZ88JsijfZv1YHMhA0Gs8=;
        b=X9gTe5tXPr6eN95W6omGW8A5NWXu+FSyAQc1nY3z+0Dm1xZy0SuUt32gQflUHgkXUa
         OlxRidb2CvCUoOaU7Sib8Vf8RpoRdY2gpYMxygknQwOimMDbmIrUFHHRz3oPeErpP4Kd
         hXsDJ7qOkwfwvm01G7teQvu6QMH7mpy+tMIzIa01IOTnR6H/Aj6ERAN8rBo5zpn+pe3w
         iBbix2YYJULJVAqnt++v7Xjd6IWot+PH5+7ptKS5hJyKklPUo4YMynDEK9EKCtDFOmUk
         2+YyPBAIgRPHHZCX6RWfuaOobQmDLXTJF1S7dL115orahOYsadcUwYReAp2ggw6y1w0c
         +GZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ihFKuh9H9LqGG/S761Dk85YZ88JsijfZv1YHMhA0Gs8=;
        b=G6s+QSphM8E/Gw52eGydIc4eN2HyO6Agu4tz70Yo18O5C5f2bMMuKPYNUSOzJKg4lI
         nLJcMYKJpO0tC/wQEOhzp2mzR54NsNMJW/DwGo6tGjQ1n/FbzY/nXKORGqEdUz+iLBt6
         Fbic5nta13EztoMl6JLnwsWPfPxdEVumRkpxMtKrw7UWzYuh3rgm/2XSomfuUtf9imAe
         v0olTg8DqBIMnJH1LTDX70lbpGYKQWyB+Qhr5FKotdNA1PLTBVeNjV6kQ0lVft04yacI
         Fs2GEXljEBOdI+lkBp1BTmhK7Oy2+wDfYFg4Uv4n7PnzHAGSi/Q9L2QPjnBwUwMTTCvE
         ccBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305OpxIrJ+dhGLlbI3GKxmdUWlRwwomGBdoL00uGF6HZsaTbAe8
	RCwkmuMoX7ta5A0ek4Uud4Q=
X-Google-Smtp-Source: ABdhPJyp1e890yXw2spKEHLNCH4PjDUCSGV0GTL11XeNTeRsXjg96BbFx8qaFpHpCDvt1KyGsiEPNg==
X-Received: by 2002:a25:8512:: with SMTP id w18mr2396238ybk.432.1599478055920;
        Mon, 07 Sep 2020 04:27:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:b0d:: with SMTP id z13ls2770284ybp.8.gmail; Mon, 07 Sep
 2020 04:27:35 -0700 (PDT)
X-Received: by 2002:a25:16d4:: with SMTP id 203mr28664246ybw.20.1599478055411;
        Mon, 07 Sep 2020 04:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599478055; cv=none;
        d=google.com; s=arc-20160816;
        b=AVt6vFcxNtteZxs7gFU5M2xvaDrv0jFPn2QjMnCyofwhznlLf1M3ilX8yc8cVIB1oY
         bAQfy2nCW4OWOIpqV9Itj7gMb59LtEXin9nj83d3U34DwIRMskSy4J1oWhT3FtKgXoTC
         nXV6PhyNeVdAWO3fcAGxqvZf7HEfybtODnmOzMrHXXohPywyRQxdFVN2AMHinkrX/yLd
         gI1rDRvKE0pXQVPw/XDUl+lAbQC/+1nfEWwMxDgXfo9/6E2FYEDKCGRbsnINhUeTIOHq
         plBsa0sGctObDNu1M5qiMiiwK+p/BIs1y9jS/7JlO7yTF/sEeSvGxr6320f+5sTcARLO
         x4vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=HxLehQRykc5ug8g77NGi3IyBGMn3TclcxeMWhNmbkgk=;
        b=ATtRFRJKZumnfP29uaQ3ngWr/WCxYy+WAqtkbYCahMvWgQV15570O3jeQOhV6USGOu
         5nJixbd+3dLTe+MUAVrQ5eg2vqziEx6AyhnVnPNqJFLu2O7SBFE88v9qOY53GAya+y4G
         xxTdvZGaaWLcgKIlXfBKmQnlyrHHsJF762o7p9J/rUp+AV6jX83HCIv3UbbybWZoQlkB
         nLr4XwqtmcKuwizwd03hq0+0hZVSvTaD/NbxxPtvZuj/RwfAaNiLEhK2VWWlKMXbc2bk
         CKbvL1xBwvXwXy+/H6kgPCD4LJk2afNUFcvp7z03puS9WZfoKl8KxMWy6K9CNdjJ142t
         cH6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id s9si329126ybk.3.2020.09.07.04.27.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 04:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: M+WMbcyoUbGsMpXSpY/zFRmtcSnZonVQhtGjKYgjvPDKDZNErUuNd+quOCvsxsifevczEkUOLt
 l5MAnyd1H5WQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9736"; a="219546767"
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; 
   d="gz'50?scan'50,208,50";a="219546767"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2020 04:27:33 -0700
IronPort-SDR: 5YYHU8iEXr7vXgiuRaSqZ10TnHx2KENCYQ/XlFGzXS0nukGwEUB1oDcFIOTQ+6s8mJ+CTWRo84
 pIcwJ5i0/M6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; 
   d="gz'50?scan'50,208,50";a="299414386"
Received: from lkp-server02.sh.intel.com (HELO a98deea729ba) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 07 Sep 2020 04:27:32 -0700
Received: from kbuild by a98deea729ba with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kFFJ5-00005p-AG; Mon, 07 Sep 2020 11:27:31 +0000
Date: Mon, 7 Sep 2020 19:27:06 +0800
From: kernel test robot <lkp@intel.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [superna9999:amlogic/v5.9/axg-vpu-dsi 8/8]
 drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:330:7: warning: variable
 'dpi_data_format' is used uninitialized whenever switch case is taken
Message-ID: <202009071904.Xewub6cA%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/superna9999/linux amlogic/v5.9/axg-vpu-dsi
head:   645bc3dfe6783227a3c1c609d74016579e404782
commit: 645bc3dfe6783227a3c1c609d74016579e404782 [8/8] fixup! drm/meson: add support for MIPI-DSI transceiver
config: arm64-randconfig-r022-20200907 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab68517e6b7e51b84c4b0e813a30258ec1ce5da5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        git checkout 645bc3dfe6783227a3c1c609d74016579e404782
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:330:7: warning: variable 'dpi_data_format' is used uninitialized whenever switch case is taken [-Wsometimes-uninitialized]
           case MIPI_DSI_FMT_RGB666_PACKED:
                ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:352:4: note: uninitialized use occurs here
                   (dpi_data_format  << BIT_DPI_COLOR_MODE)  |
                    ^~~~~~~~~~~~~~~
   arch/arm64/include/asm/io.h:126:74: note: expanded from macro 'writel_relaxed'
   #define writel_relaxed(v,c)     ((void)__raw_writel((__force u32)cpu_to_le32(v),(c)))
                                                                                ^
   include/uapi/linux/byteorder/big_endian.h:33:53: note: expanded from macro '__cpu_to_le32'
   #define __cpu_to_le32(x) ((__force __le32)__swab32((x)))
                                                       ^
   include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
           (__builtin_constant_p((__u32)(x)) ?     \
                                         ^
   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:331:7: warning: variable 'dpi_data_format' is used uninitialized whenever switch case is taken [-Wsometimes-uninitialized]
           case MIPI_DSI_FMT_RGB565:
                ^~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:352:4: note: uninitialized use occurs here
                   (dpi_data_format  << BIT_DPI_COLOR_MODE)  |
                    ^~~~~~~~~~~~~~~
   arch/arm64/include/asm/io.h:126:74: note: expanded from macro 'writel_relaxed'
   #define writel_relaxed(v,c)     ((void)__raw_writel((__force u32)cpu_to_le32(v),(c)))
                                                                                ^
   include/uapi/linux/byteorder/big_endian.h:33:53: note: expanded from macro '__cpu_to_le32'
   #define __cpu_to_le32(x) ((__force __le32)__swab32((x)))
                                                       ^
   include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
           (__builtin_constant_p((__u32)(x)) ?     \
                                         ^
   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:306:30: note: initialize the variable 'dpi_data_format' to silence this warning
           unsigned int dpi_data_format, venc_data_width;
                                       ^
                                        = 0
>> drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:330:7: warning: variable 'venc_data_width' is used uninitialized whenever switch case is taken [-Wsometimes-uninitialized]
           case MIPI_DSI_FMT_RGB666_PACKED:
                ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:353:4: note: uninitialized use occurs here
                   (venc_data_width  << BIT_IN_COLOR_MODE) |
                    ^~~~~~~~~~~~~~~
   arch/arm64/include/asm/io.h:126:74: note: expanded from macro 'writel_relaxed'
   #define writel_relaxed(v,c)     ((void)__raw_writel((__force u32)cpu_to_le32(v),(c)))
                                                                                ^
   include/uapi/linux/byteorder/big_endian.h:33:53: note: expanded from macro '__cpu_to_le32'
   #define __cpu_to_le32(x) ((__force __le32)__swab32((x)))
                                                       ^
   include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
           (__builtin_constant_p((__u32)(x)) ?     \
                                         ^
   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:331:7: warning: variable 'venc_data_width' is used uninitialized whenever switch case is taken [-Wsometimes-uninitialized]
           case MIPI_DSI_FMT_RGB565:
                ^~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:353:4: note: uninitialized use occurs here
                   (venc_data_width  << BIT_IN_COLOR_MODE) |
                    ^~~~~~~~~~~~~~~
   arch/arm64/include/asm/io.h:126:74: note: expanded from macro 'writel_relaxed'
   #define writel_relaxed(v,c)     ((void)__raw_writel((__force u32)cpu_to_le32(v),(c)))
                                                                                ^
   include/uapi/linux/byteorder/big_endian.h:33:53: note: expanded from macro '__cpu_to_le32'
   #define __cpu_to_le32(x) ((__force __le32)__swab32((x)))
                                                       ^
   include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
           (__builtin_constant_p((__u32)(x)) ?     \
                                         ^
   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c:306:47: note: initialize the variable 'venc_data_width' to silence this warning
           unsigned int dpi_data_format, venc_data_width;
                                                        ^
                                                         = 0
   4 warnings generated.

# https://github.com/superna9999/linux/commit/645bc3dfe6783227a3c1c609d74016579e404782
git remote add superna9999 https://github.com/superna9999/linux
git fetch --no-tags superna9999 amlogic/v5.9/axg-vpu-dsi
git checkout 645bc3dfe6783227a3c1c609d74016579e404782
vim +/dpi_data_format +330 drivers/gpu/drm/meson/meson_dw_mipi_dsi.c

ca4f2bd5ec599c Neil Armstrong 2020-09-07  300  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  301  static void meson_mipi_dsi_encoder_mode_set(struct drm_encoder *encoder,
ca4f2bd5ec599c Neil Armstrong 2020-09-07  302  				   struct drm_display_mode *mode,
ca4f2bd5ec599c Neil Armstrong 2020-09-07  303  				   struct drm_display_mode *adjusted_mode)
ca4f2bd5ec599c Neil Armstrong 2020-09-07  304  {
ca4f2bd5ec599c Neil Armstrong 2020-09-07  305  	struct meson_dw_mipi_dsi *mipi_dsi = encoder_to_meson_dw_mipi_dsi(encoder);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  306  	unsigned int dpi_data_format, venc_data_width;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  307  	struct meson_drm *priv = mipi_dsi->priv;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  308  	int bpp;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  309  	u32 reg;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  310  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  311  	mipi_dsi->mode_flags = mode->flags;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  312  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  313  	bpp = mipi_dsi_pixel_format_to_bpp(mipi_dsi->dsi_device->format);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  314  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  315  	phy_mipi_dphy_get_default_config(mode->clock * 1000,
ca4f2bd5ec599c Neil Armstrong 2020-09-07  316  					 bpp, mipi_dsi->dsi_device->lanes,
ca4f2bd5ec599c Neil Armstrong 2020-09-07  317  					 &mipi_dsi->phy_opts.mipi_dphy);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  318  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  319  	phy_configure(mipi_dsi->phy, &mipi_dsi->phy_opts);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  320  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  321  	switch (mipi_dsi->dsi_device->format) {
ca4f2bd5ec599c Neil Armstrong 2020-09-07  322  	case MIPI_DSI_FMT_RGB888:
ca4f2bd5ec599c Neil Armstrong 2020-09-07  323  		dpi_data_format = COLOR_24BIT;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  324  		venc_data_width = MIPI_DSI_VENC_COLOR_24B;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  325  		break;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  326  	case MIPI_DSI_FMT_RGB666:
ca4f2bd5ec599c Neil Armstrong 2020-09-07  327  		dpi_data_format = COLOR_18BIT_CFG_2;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  328  		venc_data_width = MIPI_DSI_VENC_COLOR_18B;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  329  		break;
ca4f2bd5ec599c Neil Armstrong 2020-09-07 @330  	case MIPI_DSI_FMT_RGB666_PACKED:
ca4f2bd5ec599c Neil Armstrong 2020-09-07  331  	case MIPI_DSI_FMT_RGB565:
ca4f2bd5ec599c Neil Armstrong 2020-09-07  332  		/* invalid */
ca4f2bd5ec599c Neil Armstrong 2020-09-07  333  		break;
ca4f2bd5ec599c Neil Armstrong 2020-09-07  334  	};
ca4f2bd5ec599c Neil Armstrong 2020-09-07  335  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  336  	dw_mipi_dsi_set_vclk(mipi_dsi, mode);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  337  	meson_venc_mipi_dsi_mode_set(priv, mode);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  338  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  339  	meson_encl_load_gamma(priv);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  340  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  341  	writel_relaxed(0, priv->io_base + _REG(ENCL_VIDEO_EN));
ca4f2bd5ec599c Neil Armstrong 2020-09-07  342  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  343  	meson_dw_mipi_dsi_init(mipi_dsi);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  344  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  345  	/* Configure Set color format for DPI register */
ca4f2bd5ec599c Neil Armstrong 2020-09-07  346  	reg = readl_relaxed(mipi_dsi->base + MIPI_DSI_TOP_CNTL) &
ca4f2bd5ec599c Neil Armstrong 2020-09-07  347  		~(0xf<<BIT_DPI_COLOR_MODE) &
ca4f2bd5ec599c Neil Armstrong 2020-09-07  348  		~(0x7<<BIT_IN_COLOR_MODE) &
ca4f2bd5ec599c Neil Armstrong 2020-09-07  349  		~(0x3<<BIT_CHROMA_SUBSAMPLE);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  350  
ca4f2bd5ec599c Neil Armstrong 2020-09-07  351  	writel_relaxed(reg |
ca4f2bd5ec599c Neil Armstrong 2020-09-07  352  		(dpi_data_format  << BIT_DPI_COLOR_MODE)  |
ca4f2bd5ec599c Neil Armstrong 2020-09-07  353  		(venc_data_width  << BIT_IN_COLOR_MODE) |
ca4f2bd5ec599c Neil Armstrong 2020-09-07  354  		0 << BIT_COMP0_SEL |
ca4f2bd5ec599c Neil Armstrong 2020-09-07  355  		1 << BIT_COMP1_SEL |
ca4f2bd5ec599c Neil Armstrong 2020-09-07  356  		2 << BIT_COMP2_SEL |
ca4f2bd5ec599c Neil Armstrong 2020-09-07  357  		(mipi_dsi->mode_flags & DRM_MODE_FLAG_NHSYNC ? 0 : BIT(BIT_HSYNC_POL)) |
ca4f2bd5ec599c Neil Armstrong 2020-09-07  358  		(mipi_dsi->mode_flags & DRM_MODE_FLAG_NVSYNC ? 0 : BIT(BIT_VSYNC_POL)),
ca4f2bd5ec599c Neil Armstrong 2020-09-07  359  		mipi_dsi->base + MIPI_DSI_TOP_CNTL);
ca4f2bd5ec599c Neil Armstrong 2020-09-07  360  }
ca4f2bd5ec599c Neil Armstrong 2020-09-07  361  

:::::: The code at line 330 was first introduced by commit
:::::: ca4f2bd5ec599c726a53080c94e1fccdf19d2571 drm/meson: add support for MIPI-DSI transceiver

:::::: TO: Neil Armstrong <narmstrong@baylibre.com>
:::::: CC: Neil Armstrong <narmstrong@baylibre.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009071904.Xewub6cA%25lkp%40intel.com.

--YZ5djTAD1cGYuMQK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--YZ5djTAD1cGYuMQK--
