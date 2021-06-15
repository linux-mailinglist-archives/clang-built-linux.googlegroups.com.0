Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGNHUCDAMGQEIEWIADY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E54F53A7436
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 04:42:34 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id v16-20020ae9e3100000b02903aafadba721sf12823022qkf.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 19:42:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623724954; cv=pass;
        d=google.com; s=arc-20160816;
        b=dFeqHv0BePt5a9ytvXmiDc6+8kEibCt6crIRSsY+JDq09oEAZ6MxkobL6gERJQchYc
         Logp2hqa2DAe38Q0vgilMvo6QLyBrMZF3aBvNTVqrtD6b/qEnjFkJHTqWnvi1qRJ2LzR
         adFgXldxJ0+NR2pU6CKthpQLz+l1zn0QQeyQ5lYzkNUVIAdiA8owPFXKLTrQ26NWbuH0
         FyxIAroVVJedB/SA0PW/vuZitDXjKpFkCAC31GNNZWl/gMAN5KdxQwumfDZaK7yaK/fb
         6J+XSOVwCrh3wBzaXiQ8z1o6nHIlNVm0bwU3aNt1/Ss4mHlisRyjb2A8FoLQy1ri7oTR
         P3/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=pZcS3FEwnKHYAzOeFU0e9nnzdX+mmHsmsPJ9BLAQNsM=;
        b=uImXc8iPLbO4WgOGi7DFVsCzBV0FU75pQhdMVIS9oJUFfTBAhrfAx95pMECrJo0Ocs
         3CdDENVNp1SpunDi16P9x+fIb3FTjfCXGR+yymKNQznhG4Xe5guA7wD1vhjEGZSQzL52
         G++dhfWJYlBOxwabyN7f5yLeIBYz2vK5IAlRGSgxrY/um9HWuhJUhc4rR4dIcLh5CN4B
         BHJJUOtN1vRa5/xTaQoGA5fTLd9Xd5ZrCOhbCdJVRvaM13Pb4m3L3rM1D4oy+kizsj9G
         pGw0SgtCHbOvCucHVMf/luT3rzze5A6EyZ7vvs7RZdEc2xTw/nEEojs5PuWg9VKC1tAP
         JvNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pZcS3FEwnKHYAzOeFU0e9nnzdX+mmHsmsPJ9BLAQNsM=;
        b=dX//TUTUe2hW9GdLUv1FLKqROZdbmxC82tt5cJKIWOK+C7ECXRNjCiQxeoZO5Ka8HD
         xC2LPQ/Nn5Kuqko4bpqTVzF6tb7iYlLrTOCbxlrCQsAQM0ZE/T/HL7rr41sp2U2/eTHr
         Mh8xn53Inw8z+pmzbhkOD+JDI7tDj3iNY1a3fcpKFo2abjB4nzXjfbfq6gWV5SH+enqu
         IKpufglBKYRIf0oi0+KwDkxP56hYqo9ecljhSNkbHGs3+D/Ji3EsruSf57Rj42As3h5n
         LiXiGc8JVWiOFx3nF4woYs5bDQTxgGpTJvYuJIw5qifDfM15KgVm8pGL3q9AvL2qbH1E
         y/vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pZcS3FEwnKHYAzOeFU0e9nnzdX+mmHsmsPJ9BLAQNsM=;
        b=V9URvC6IKLSc3i5yObBTasE+udHVlM7NqAd+GLoirjA/eQNEjlr2TdYp0j+dMcY+f+
         1f6nYiTCBrg4unrqRDalVUY/H1H17Mvr5CC2gRW4s3ifU1ZOwxwmOC+GKaTr+StDK5tO
         8BMJzheTp6TzUYZkcsB1QlF0xpGqS1KSLmnlaaNpcEGyaPmO2Sv6jNDR5m4CcPhzDIfg
         0nuWF5r1NZ9112mg94YSgFQNpMdJL2REBXO2nDgJpVi/X+ANGscFwj8DDfqAOrvGtMDz
         ZIwm0/9/uSit8pjHsivgO8LBufCgWq0pZ5xAmW1kt0/ZofqUgsStpA1U3r6sLgt9rRoY
         Z5gA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jN3x+wTpD6lGtBtcg4y76SP8i6+jgBp/6+ynZjBHn5oewn2ac
	iW1QllJIA22hLsIFJS6p+z4=
X-Google-Smtp-Source: ABdhPJxxe34sTnpYGxyokkccVdAEI86gQJtA7sPvFB1Xa4Nb6/eHbJTTgTxxkM/UJytMOATd+xvNCw==
X-Received: by 2002:aed:204c:: with SMTP id 70mr19930960qta.260.1623724953733;
        Mon, 14 Jun 2021 19:42:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e40d:: with SMTP id o13ls6398158qvl.0.gmail; Mon, 14 Jun
 2021 19:42:33 -0700 (PDT)
X-Received: by 2002:a0c:f582:: with SMTP id k2mr2593540qvm.51.1623724953068;
        Mon, 14 Jun 2021 19:42:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623724953; cv=none;
        d=google.com; s=arc-20160816;
        b=H1904LTzpi5CcljEppzpCKyzP2xUBScv5iQLNtJOJ+WXQLAoResJ+qXEJye+TZ53W2
         gpj7JClxe5hBVzbTDcGOpt4oARmNQXxTLSWHlTIPC9C90g/QrzHcE2Pu2LHFeVTtrZUH
         jtkqsNlJni40gf/zREy61z1fNfTNNT+Rg3YEf7dHkxAxof9vtKqq3LZK59b2zJxbGNL4
         /mxlqRxy1CuvLksODwiHnvJpVAB5WG2fvlJi2C5irD6WZ24+6ZEuQfGuL7jpa+CekFQm
         WwcTXLIGawUuz2CvANsmzCJBk4QiaO+lTEpqOlbonSDzbSp2dtX/XhGtfQIpYxg230ad
         4YgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=qPuDkmytVwpeT28qrUVHV5hfQEUGhMz0+3u9n2zwc38=;
        b=Ium56/ZcNuR/whrlg0aCDs2G1mHM3EYIGkRSDJFsXJzWab2kbxpVGEjkLmZk9VhBvj
         ug1aBdGBR0u/PgbpTD1v4KT713yGgWfvv3JkSMdAMKZHfzOuQuhOmz+1LhsQuSNxFOs6
         YUSpCSt5abPSS9zj1ZybuuhDtkBI+TRcLTpkRXkR14Y7XZfV6JL4tTRZh+g9F6x7d7LW
         4QoNerSLLdKJKjusmOlETxhoRBJ6PJroDC+hnkTnS8RgPeIRKkkPvWo9cKNYclhVjKES
         nRx5zv/RvVQ9YDblNB8kp3FRmnDlIXlbaFak3tzbHMoV9MJJjpe/tLgijD1XbOzOSSyH
         m7RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id d77si149711qkg.1.2021.06.14.19.42.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Jun 2021 19:42:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: kLMGsGi+JNWpc8t6vXTptLE0N2X1NlTigU4VKZAbfOpz9hHuSxUR5y8U8yho4Mq/b6jO4/mKA9
 X0I3+7m/wm3Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="186285016"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; 
   d="gz'50?scan'50,208,50";a="186285016"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2021 19:42:31 -0700
IronPort-SDR: 5AtqAzyFsa7siDK8H1BU6m9KfK+K2xGot5k2eM5o+kFmvF0FBOQMVMYTU/hxZqyLzg3DlOCEf7
 +389KUH11NSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; 
   d="gz'50?scan'50,208,50";a="450085026"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 14 Jun 2021 19:42:28 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lsz23-0000E5-AN; Tue, 15 Jun 2021 02:42:27 +0000
Date: Tue, 15 Jun 2021 10:42:07 +0800
From: kernel test robot <lkp@intel.com>
To: Walter Wu <walter-zh.wu@mediatek.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: drivers/gpu/drm/panel/panel-samsung-ld9040.c:239:12: warning: stack
 frame size of 8344 bytes in function 'ld9040_prepare'
Message-ID: <202106151002.wA1ohD62-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   009c9aa5be652675a06d5211e1640e02bbb1c33d
commit: 02c587733c8161355a43e6e110c2e29bd0acff72 kasan: remove redundant config option
date:   8 weeks ago
config: x86_64-randconfig-a016-20210615 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=02c587733c8161355a43e6e110c2e29bd0acff72
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 02c587733c8161355a43e6e110c2e29bd0acff72
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/panel/panel-samsung-ld9040.c:377:35: warning: unused variable 'ld9040_ids' [-Wunused-const-variable]
   static const struct spi_device_id ld9040_ids[] = {
                                     ^
>> drivers/gpu/drm/panel/panel-samsung-ld9040.c:239:12: warning: stack frame size of 8344 bytes in function 'ld9040_prepare' [-Wframe-larger-than=]
   static int ld9040_prepare(struct drm_panel *panel)
              ^
   2 warnings generated.
--
>> drivers/usb/gadget/udc/max3420_udc.c:843:12: warning: stack frame size of 13976 bytes in function 'max3420_thread' [-Wframe-larger-than=]
   static int max3420_thread(void *dev_id)
              ^
   1 warning generated.


vim +/ld9040_prepare +239 drivers/gpu/drm/panel/panel-samsung-ld9040.c

ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  238  
099b3e8699322e drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31 @239  static int ld9040_prepare(struct drm_panel *panel)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  240  {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  241  	struct ld9040 *ctx = panel_to_ld9040(panel);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  242  	int ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  243  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  244  	ret = ld9040_power_on(ctx);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  245  	if (ret < 0)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  246  		return ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  247  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  248  	ld9040_init(ctx);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  249  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  250  	ret = ld9040_clear_error(ctx);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  251  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  252  	if (ret < 0)
8141028278c2ea drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31  253  		ld9040_unprepare(panel);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  254  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  255  	return ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  256  }
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  257  
8141028278c2ea drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31  258  static int ld9040_enable(struct drm_panel *panel)
8141028278c2ea drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31  259  {
8141028278c2ea drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31  260  	return 0;
8141028278c2ea drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31  261  }
8141028278c2ea drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31  262  
0ce8ddd8e06dcb drivers/gpu/drm/panel/panel-samsung-ld9040.c Sam Ravnborg      2019-12-07  263  static int ld9040_get_modes(struct drm_panel *panel,
0ce8ddd8e06dcb drivers/gpu/drm/panel/panel-samsung-ld9040.c Sam Ravnborg      2019-12-07  264  			    struct drm_connector *connector)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  265  {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  266  	struct ld9040 *ctx = panel_to_ld9040(panel);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  267  	struct drm_display_mode *mode;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  268  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  269  	mode = drm_mode_create(connector->dev);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  270  	if (!mode) {
5936b3bdaa8889 drivers/gpu/drm/panel/panel-samsung-ld9040.c Sam Ravnborg      2020-08-15  271  		dev_err(panel->dev, "failed to create a new display mode\n");
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  272  		return 0;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  273  	}
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  274  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  275  	drm_display_mode_from_videomode(&ctx->vm, mode);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  276  	mode->width_mm = ctx->width_mm;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  277  	mode->height_mm = ctx->height_mm;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  278  	connector->display_info.width_mm = mode->width_mm;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  279  	connector->display_info.height_mm = mode->height_mm;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  280  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  281  	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  282  	drm_mode_probed_add(connector, mode);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  283  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  284  	return 1;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  285  }
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  286  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  287  static const struct drm_panel_funcs ld9040_drm_funcs = {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  288  	.disable = ld9040_disable,
099b3e8699322e drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31  289  	.unprepare = ld9040_unprepare,
099b3e8699322e drivers/gpu/drm/panel/panel-ld9040.c         Ajay Kumar        2014-07-31  290  	.prepare = ld9040_prepare,
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  291  	.enable = ld9040_enable,
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  292  	.get_modes = ld9040_get_modes,
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  293  };
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  294  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  295  static int ld9040_parse_dt(struct ld9040 *ctx)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  296  {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  297  	struct device *dev = ctx->dev;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  298  	struct device_node *np = dev->of_node;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  299  	int ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  300  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  301  	ret = of_get_videomode(np, &ctx->vm, 0);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  302  	if (ret < 0)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  303  		return ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  304  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  305  	of_property_read_u32(np, "power-on-delay", &ctx->power_on_delay);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  306  	of_property_read_u32(np, "reset-delay", &ctx->reset_delay);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  307  	of_property_read_u32(np, "panel-width-mm", &ctx->width_mm);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  308  	of_property_read_u32(np, "panel-height-mm", &ctx->height_mm);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  309  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  310  	return 0;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  311  }
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  312  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  313  static int ld9040_probe(struct spi_device *spi)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  314  {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  315  	struct device *dev = &spi->dev;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  316  	struct ld9040 *ctx;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  317  	int ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  318  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  319  	ctx = devm_kzalloc(dev, sizeof(struct ld9040), GFP_KERNEL);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  320  	if (!ctx)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  321  		return -ENOMEM;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  322  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  323  	spi_set_drvdata(spi, ctx);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  324  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  325  	ctx->dev = dev;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  326  	ctx->brightness = ARRAY_SIZE(ld9040_gammas) - 1;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  327  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  328  	ret = ld9040_parse_dt(ctx);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  329  	if (ret < 0)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  330  		return ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  331  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  332  	ctx->supplies[0].supply = "vdd3";
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  333  	ctx->supplies[1].supply = "vci";
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  334  	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  335  				      ctx->supplies);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  336  	if (ret < 0)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  337  		return ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  338  
8a8cc83cbd081b drivers/gpu/drm/panel/panel-ld9040.c         Alexandre Courbot 2014-10-23  339  	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  340  	if (IS_ERR(ctx->reset_gpio)) {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  341  		dev_err(dev, "cannot get reset-gpios %ld\n",
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  342  			PTR_ERR(ctx->reset_gpio));
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  343  		return PTR_ERR(ctx->reset_gpio);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  344  	}
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  345  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  346  	spi->bits_per_word = 9;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  347  	ret = spi_setup(spi);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  348  	if (ret < 0) {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  349  		dev_err(dev, "spi setup failed.\n");
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  350  		return ret;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  351  	}
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  352  
9a2654c0f62a17 drivers/gpu/drm/panel/panel-samsung-ld9040.c Laurent Pinchart  2019-09-04  353  	drm_panel_init(&ctx->panel, dev, &ld9040_drm_funcs,
9a2654c0f62a17 drivers/gpu/drm/panel/panel-samsung-ld9040.c Laurent Pinchart  2019-09-04  354  		       DRM_MODE_CONNECTOR_DPI);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  355  
c3ee8c65f63799 drivers/gpu/drm/panel/panel-samsung-ld9040.c Bernard Zhao      2020-08-01  356  	drm_panel_add(&ctx->panel);
c3ee8c65f63799 drivers/gpu/drm/panel/panel-samsung-ld9040.c Bernard Zhao      2020-08-01  357  
c3ee8c65f63799 drivers/gpu/drm/panel/panel-samsung-ld9040.c Bernard Zhao      2020-08-01  358  	return 0;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  359  }
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  360  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  361  static int ld9040_remove(struct spi_device *spi)
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  362  {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  363  	struct ld9040 *ctx = spi_get_drvdata(spi);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  364  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  365  	ld9040_power_off(ctx);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  366  	drm_panel_remove(&ctx->panel);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  367  
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  368  	return 0;
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  369  }
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  370  
1a8f9056f59e01 drivers/gpu/drm/panel/panel-ld9040.c         Thierry Reding    2015-04-14  371  static const struct of_device_id ld9040_of_match[] = {
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  372  	{ .compatible = "samsung,ld9040" },
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  373  	{ }
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  374  };
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  375  MODULE_DEVICE_TABLE(of, ld9040_of_match);
ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c         Andrzej Hajda     2014-03-26  376  
6915db346039b3 drivers/gpu/drm/panel/panel-samsung-ld9040.c Marek Szyprowski  2020-02-20 @377  static const struct spi_device_id ld9040_ids[] = {
6915db346039b3 drivers/gpu/drm/panel/panel-samsung-ld9040.c Marek Szyprowski  2020-02-20  378  	{ "ld9040", },
6915db346039b3 drivers/gpu/drm/panel/panel-samsung-ld9040.c Marek Szyprowski  2020-02-20  379  	{ /* sentinel */ }
6915db346039b3 drivers/gpu/drm/panel/panel-samsung-ld9040.c Marek Szyprowski  2020-02-20  380  };
6915db346039b3 drivers/gpu/drm/panel/panel-samsung-ld9040.c Marek Szyprowski  2020-02-20  381  MODULE_DEVICE_TABLE(spi, ld9040_ids);
6915db346039b3 drivers/gpu/drm/panel/panel-samsung-ld9040.c Marek Szyprowski  2020-02-20  382  

:::::: The code at line 239 was first introduced by commit
:::::: 099b3e8699322efb7229913d2c1651588205f182 drm/panel: ld9040: Add dummy prepare and unprepare routines

:::::: TO: Ajay Kumar <ajaykumar.rs@samsung.com>
:::::: CC: Thierry Reding <treding@nvidia.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106151002.wA1ohD62-lkp%40intel.com.

--3MwIy2ne0vdjdPXF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
dyLfCE6TkoVr+LA4N16EAGUH8X88iF3cLIYCAA==

--3MwIy2ne0vdjdPXF--
