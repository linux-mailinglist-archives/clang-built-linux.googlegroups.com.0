Return-Path: <clang-built-linux+bncBD5LDHXSYUMRBKPQUH5QKGQEQIS2LJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 06340271F50
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 11:53:46 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id p3sf3980193ljc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 02:53:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600682025; cv=pass;
        d=google.com; s=arc-20160816;
        b=uRUNbnbPb+PabQtzpx1Hpy6c+K04DWyF83nmNUTlPxH7crMiBtbSm94qnnwm/aA9oz
         R1j0Z0n20ydOPyNPjU6DxJ16Sotyqo8YndvCG/SjLoO5nW6LnKfNiA1uPe6HigwTWV8a
         cg3gweoaCdERpoc9lC83zP/0EIKN3iSB4GklRKFPhLOeFf1NEkBv73z90t2TFlDSsbwd
         M59s7cM5yBhQxRKmRJ1QvkS75GGj2j1+RO8sDE+mGrxrqSAFbqUJtjV4IwNNIqpKvVqi
         otUlJanxCQVeZRDkHnHU3fhL/doH83Jx1J22Ry0QSc713VlcZiByAhiLe7zJQdrBRwcO
         20og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9XN5oK6as/OECYc4L8wEvO2BGtJ23k+MAVbuSBrZAac=;
        b=jf/EtYZtwLBMNIMwR3Tikbpt1NmdAeBbqqDj4eKumLjhmkSjQbBaYLiRxm18QFy9Z6
         8PukASzUaVLpPMMfCj8qpIfw/uc9C9m+jQ0xqghiuSMBTjMWJAXtbzv36Fo17kgns8ha
         Z7vlvRvUVXiVulmyaHtoViJ7fWWGeuYhMVF1XNloxn/JKQMYhw/c1cxtGHmZ0BXwnT0O
         OnfwZqyOqePDkU40hSPXuHRYPt09XY6OaKWPZ43QpWeCM6O5xs1Hn/spPMDG+wQbONpC
         FYR6KP58/didq6M2HcMtSAyEZDEXE4MkL/1oR4XnJXIz5KQ6VJZnsVD5D/xb52awBVc1
         RmfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9XN5oK6as/OECYc4L8wEvO2BGtJ23k+MAVbuSBrZAac=;
        b=emov92g7Gv7laS3vHld71BojZj3N0t5eR3x6Zmlw+qQxrMlTm02/ss7bsOVi5aDZ18
         EUn4p2caI9LQkxseVjTPZ8YCTlM2daA8d9HCrkoe/V/7UCEWCXrP1w3MUzksoCOX178E
         ax0Cq8mcN0/E9Gcawqirslzl4EmYLnEWjmC0X9uCshiHgv/o+yjT/9S94yTee11SLO80
         VL5q20tlmaq6Y7kqk6r6Hs2sW35PP2olfRNjTAP4+FUtmU29fi76zWuakgiU+AZplBXr
         A+0OX82FjMrh28noy+6G6s0/siKyyMEDxp9dUJcLz2EDuN68ALMtfePRN6T4PAEGDv3z
         Q9nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9XN5oK6as/OECYc4L8wEvO2BGtJ23k+MAVbuSBrZAac=;
        b=CJPtbHmEQORknB8/6ZT0cCZqA8O7GHbpzL9zKFzYKAk/UxddI9zlanux6BHIvx6kLM
         Z2Zgvu6CD6tHNtNgy9A+lX+KiA7ghBIBdVkHtsX0NESKYQqfgCnBgyvrMnO7C1qmWA65
         cjTIblsDX9XMkLZA6iB0yXElGsA7y2umD79lFarK+o4sTe9eOiRs4D2dfSytw5fSSj1C
         Vw22T/2WiGue7xOWV1Ua8u0UeSw+mV6qFCjaolJxwWEMikAMpa0ACbp+TiPmwLOznsIt
         YS/BLwhzeNXYwVQ8Py2hBS87rez8+rCU1CXmFdCytZVJv8EaNmtvazgvwc54ZTU/mvID
         gWMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LWKyyMDtqGk1dDWZLloTBexhkXtZQd02fUtCoMj673RO2N2FO
	bRe9azep1EbSwvR17NGD3Fc=
X-Google-Smtp-Source: ABdhPJyqpxELLdOiEB5KSpVskzrfUP4SRl3N3xPn7wgqS2DHHvJ8rMWynDrdNauWRH0jYj7YNuecMA==
X-Received: by 2002:a2e:a41b:: with SMTP id p27mr16692237ljn.75.1600682025551;
        Mon, 21 Sep 2020 02:53:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86c8:: with SMTP id n8ls1575607ljj.1.gmail; Mon, 21 Sep
 2020 02:53:44 -0700 (PDT)
X-Received: by 2002:a2e:2e13:: with SMTP id u19mr15051083lju.11.1600682024241;
        Mon, 21 Sep 2020 02:53:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600682024; cv=none;
        d=google.com; s=arc-20160816;
        b=XmXM80lpWAj9u+JrWtB1keNZ7FFCCWw741LX5rw8y+eTAbGGKend9VVUQB3dX7DvJy
         zEzwl1nbJChURKS7K36EfbJRQpzLyDjFx7DpQ2jmrC4Ayl8KoPa3Sc1FARJz0Y6ZbbL8
         mYOPKrVKWyiWAFGW56MR02rjFAmS0A/4sACV6otrVzbZb7jnDlH8daq6MtuQnfYed3he
         ldFQtT2Smbhy95gURP8Fi2Dhjl9KcbdYAmx3sfO27rGREy3jRZF+v4Z07rSJvo+OH9AU
         QqaA1saRczko8H9WzU30HUjAKTmZF8UWgPi41sUFbdrCY1DMw22pHcN35J5Uc/MGv2bs
         8s9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=QH0gCF0LHvXvDVb/+MSy0s2p5G/Ga5X1ZIAyNY41j2E=;
        b=OjwUYaFgoFRnmNNCHK0Jwk6UBaEERrsMoQaVZMFMlpK71jk/k1e178kwLgr8EMP/6c
         9Z4e6bmC1RZPuHwWe6yiUOHoH/WqAbuAAFpyvIWYlOfoqd3c7q+34eaiEdxMfGINMS44
         0eJCWuHdLYYH+1JUE7cs7tEuG2TcFI8hFi96QuJ5kfjwkca05WldhrpcgcDD4RJJGUFH
         7jfxgjnI6Mbe6Ddrp18E6gPm/8pB9u+BwsJPXeFromnNd5jb/mboNPth2U8n0gq5MR2/
         6G42kqpFZ3etQ4Vt/oQTpHoMeXgVoB0dnpEOjlSiAUzQEXr3HCPFFFlFOy7hvG7fCvwb
         3mFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id d1si272267lfa.11.2020.09.21.02.53.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 02:53:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 53D91AD83;
	Mon, 21 Sep 2020 09:54:19 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id 076491E12E1; Mon, 21 Sep 2020 11:53:43 +0200 (CEST)
Date: Mon, 21 Sep 2020 11:53:43 +0200
From: Jan Kara <jack@suse.cz>
To: kernel test robot <lkp@intel.com>
Cc: Jan Kara <jack@suse.cz>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-nvdimm@lists.01.org,
	Dan Williams <dan.j.williams@intel.com>
Subject: Re: [linux-nvdimm:libnvdimm-fixes 2/3] drivers/dax/super.c:325:6:
 error: redefinition of 'dax_supported'
Message-ID: <20200921095342.GD5862@quack2.suse.cz>
References: <202009210706.QnE7d195%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="XF85m9dhOBO43t/C"
Content-Disposition: inline
In-Reply-To: <202009210706.QnE7d195%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jack@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jack@suse.cz
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


--XF85m9dhOBO43t/C
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Mon 21-09-20 07:12:11, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm.git libnvdimm-fixes
> head:   d4c5da5049ac27c6ef8f6f98548c3a1ade352d25
> commit: e2ec5128254518cae320d5dc631b71b94160f663 [2/3] dm: Call proper helper to determine dax support
> config: x86_64-randconfig-a011-20200920 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f4e554180962aa6bc93678898b6933ea712bde50)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout e2ec5128254518cae320d5dc631b71b94160f663
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/dax/super.c:325:6: error: redefinition of 'dax_supported'
>    bool dax_supported(struct dax_device *dax_dev, struct block_device *bdev,
>         ^
>    include/linux/dax.h:162:20: note: previous definition is here
>    static inline bool dax_supported(struct dax_device *dax_dev,
>                       ^
>    drivers/dax/super.c:451:6: warning: no previous prototype for function 'run_dax' [-Wmissing-prototypes]
>    void run_dax(struct dax_device *dax_dev)
>         ^
>    drivers/dax/super.c:451:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void run_dax(struct dax_device *dax_dev)
>    ^
>    static 
>    1 warning and 1 error generated.

Attached patch should fix the build error.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200921095342.GD5862%40quack2.suse.cz.

--XF85m9dhOBO43t/C
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="0001-dax-Fix-compilation-for-CONFIG_DAX-CONFIG_FS_DAX.patch"

From c48c9d1ee41ca17561dfd7ec5247b5afc527d40e Mon Sep 17 00:00:00 2001
From: Jan Kara <jack@suse.cz>
Date: Mon, 21 Sep 2020 11:33:23 +0200
Subject: [PATCH] dax: Fix compilation for CONFIG_DAX && !CONFIG_FS_DAX

dax_supported() is defined whenever CONFIG_DAX is enabled. So dummy
implementation should be defined only in !CONFIG_DAX case, not in
!CONFIG_FS_DAX case.

Fixes: e2ec51282545 ("dm: Call proper helper to determine dax support")
Cc: <stable@vger.kernel.org>
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Jan Kara <jack@suse.cz>
---
 include/linux/dax.h | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/include/linux/dax.h b/include/linux/dax.h
index 497031392e0a..43b39ab9de1a 100644
--- a/include/linux/dax.h
+++ b/include/linux/dax.h
@@ -58,6 +58,8 @@ static inline void set_dax_synchronous(struct dax_device *dax_dev)
 {
 	__set_dax_synchronous(dax_dev);
 }
+bool dax_supported(struct dax_device *dax_dev, struct block_device *bdev,
+		int blocksize, sector_t start, sector_t len);
 /*
  * Check if given mapping is supported by the file / underlying device.
  */
@@ -104,6 +106,12 @@ static inline bool dax_synchronous(struct dax_device *dax_dev)
 static inline void set_dax_synchronous(struct dax_device *dax_dev)
 {
 }
+static inline bool dax_supported(struct dax_device *dax_dev,
+		struct block_device *bdev, int blocksize, sector_t start,
+		sector_t len)
+{
+	return false;
+}
 static inline bool daxdev_mapping_supported(struct vm_area_struct *vma,
 				struct dax_device *dax_dev)
 {
@@ -130,8 +138,6 @@ static inline bool generic_fsdax_supported(struct dax_device *dax_dev,
 	return __generic_fsdax_supported(dax_dev, bdev, blocksize, start,
 			sectors);
 }
-bool dax_supported(struct dax_device *dax_dev, struct block_device *bdev,
-		int blocksize, sector_t start, sector_t len);
 
 static inline void fs_put_dax(struct dax_device *dax_dev)
 {
@@ -159,13 +165,6 @@ static inline bool generic_fsdax_supported(struct dax_device *dax_dev,
 	return false;
 }
 
-static inline bool dax_supported(struct dax_device *dax_dev,
-		struct block_device *bdev, int blocksize, sector_t start,
-		sector_t len)
-{
-	return false;
-}
-
 static inline void fs_put_dax(struct dax_device *dax_dev)
 {
 }
-- 
2.16.4


--XF85m9dhOBO43t/C--
