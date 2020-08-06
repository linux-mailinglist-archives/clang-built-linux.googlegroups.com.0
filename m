Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDVQWD4QKGQEG2NA43Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2F723DB39
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 16:47:43 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id r1sf18334689ybg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 07:47:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596725262; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zd0fLamBR7e4ZWXH8ufoL3Dq0R4F27bYnTMQmHwFgNLBvhfRbwLkkHO9HQkjPIjj9i
         TZkjaalxhdJk5DZNMSfDlxtcW5N5iGGyWMUtRJvPNxTcrjz+RRJgMAJ7a+Zk5xO5CsmZ
         gPqEMejlACod2UN+WRT4GN1epccvv7QKVCrmXE5/ZbR3SgWL8gMNqkszVjg3PpUTLRHA
         8VQ1AJ87jo2KRbjvlAWz+TfW1rFQgKghVpf+/ncfZbEdjdP3myDrDNJaRuZ/Ijt6iWRZ
         0U0AeiLeXC1rXmR5DpJPTKTTl3SRiBsLvT9MX7uZzny/Oag59RwIOnOPKJJanRLF+U9S
         I3ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=NxBUIIUJst1hcFLIlaOrt7asb6QZeWQ3kqLa9T+P9sQ=;
        b=i6up4LpCRoox1TEsanaIA48HPFLSDKTEj+RPvD/KsFwTzj0irzxTMgBx87nB/tu+LD
         1pJDQBqMf40r2Ga7jkIwQ9yZLWS8epDxFdWA+V+qEkJIrl4L0bsjXmqj1Metb179UwOS
         gTo/jTF0JMpdDvcYDzNp4UttoyesT0UY8E2+4tWOM1qeL6Yf0yH2WImtEyWWm6RdEpiQ
         obhD3aio0Q6AEfyD/LNpSmrePHqhztWdVrlngEIeoT2GbtytP+YMU4kJwrPZe+vfZQUw
         CPwtnVrFbnfJojqDNT4UtZb77xUPjCK7cDqr9CZCwUxoUdjFSMek/lK3PdFFPjgehEyU
         VBHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NxBUIIUJst1hcFLIlaOrt7asb6QZeWQ3kqLa9T+P9sQ=;
        b=XoO0ciGLA9hrjsZ0mfyBmtyGKYN84W2Ye/bFi5BsrWq3ks8klrh6ZG+Mjf0Kq5XHmO
         dZHPiJAuZUX5wvhN/NeVbdJ5eCkjxDQF5qUy3yXPxT4mIIYxdTpSJu5ZWdlWTp9TWsCi
         NTMfVZvo2tQYiynno9hDhSV5EPrO03AzTJ+PCYPi8dwgOIaQI93o7K265aa+fwNsizu5
         jPvodkCOxEzp5McBPnxmVENYcekHQNSU/4ScAlLTk2euT0v36lGADbEk2leg/2f5/08W
         TV3K6cFZsjeWwWUt9C/vQu0AswAfZAckLxlKxClkZkjw6InJziGLPGmFrYa/nXYwFcJU
         C1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NxBUIIUJst1hcFLIlaOrt7asb6QZeWQ3kqLa9T+P9sQ=;
        b=iHQCShVQlXJJ4fPZGM4qRMrKYMObLQuvNRe/8Y7ns60rgBmqqRqdB0GIKVINyX1qHw
         qaB9q6N8jAgQqCtKlDVvE6j1r0ZmPaGuabx0kmr/mJrLUS5GX11jCTI+fZ4RKsQHVBtg
         b8fjiOIKtaRTmj6TgSGIxnqzJierurqjbNxFZ/CwWiaunvnpf+yvzD6x5J5zj9oebOe/
         o0orJzNr3Ieiky52ES/VhmnnXcD/FYucXImc/RxGlNnavirWWIM0S6a9GBx5a9tUm+3c
         5BEPlmveJROx/OwIxirwRewyS4HR9x8Jk9y4bV0V/XMDvnqldVoNMy+NnEVcAks0tds3
         J6gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cl1NiU+bwUILesULIetghlZFH02vI2aKqIZ1nt1Zdk2MtoPJ8
	wYN2ZoudspGdY3P4VAJT2VE=
X-Google-Smtp-Source: ABdhPJwOQMRGuQz7vh6cwgykcUWrSYAYXRpYEsKukjUdKAii9ENRT2ZLQrjVYFN9hkZIUcG533B8Dw==
X-Received: by 2002:a25:8411:: with SMTP id u17mr11907511ybk.95.1596725262436;
        Thu, 06 Aug 2020 07:47:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dad5:: with SMTP id n204ls2440908ybf.8.gmail; Thu, 06
 Aug 2020 07:47:42 -0700 (PDT)
X-Received: by 2002:a25:d707:: with SMTP id o7mr13397270ybg.418.1596725261897;
        Thu, 06 Aug 2020 07:47:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596725261; cv=none;
        d=google.com; s=arc-20160816;
        b=SNZg+vZoGRavJTsxks6DB2pf9A5D1Y/R8bZ2Pbqqickst/tne0td3dlNKkX42buZQD
         OfaiJKmiDnuQ8ZHG2V0JYmCy3V5VrkwtdrRr6I+obi7K8yZLM3lw8KuaVZ9scT1I6X8I
         kGF68r2g+hSXicj8VY4WogYNqNtveUNfJeeyG2rUZe6r8PcqnAacX41bhFrQ2nsuwDLT
         DBIa3eTLl5zPAztCNcfEUo399/+u9DqgZZ7nUSE2ZeXlKOsEaYcpF/0ChSXuZZUPS0kz
         uzBwAU0I8vh05f11bTNrtRzKb/64d5qhAuHXDuXIu8blXUIv1uTHzrEOXqEOSd4058Rn
         ZCrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=MRLqsjawd4t6WeuT8KzGm92UcWNFHQbLLDU95CfrGOQ=;
        b=BC5IfnnksJIdc3niOcDOjyn6Q5ttiIi5qVaZhowijLV+ijhX236EEv6hCA1ZlfYbpQ
         MZ6gIupUTOx9/bPtWaymgMKmxXlLg2Txt90/r7hIISzsQfGdGkJkiac2l2fBh+A8SpLn
         1gYlpRIaCIuXaKnyPB35koJpE/Ixk/2msNUF5izluCJxjFIcNKRtZJ2tYxDqQgVYfA6W
         Z5lcZH3bVPDwtzsUA0aC9EeLXiWBpJ05KUrrunIE7SZfOqm4iSyz7FRJ23+Zwd6+h8Dh
         5lbuVJuzqNCKZBWVXhlAF6vOiMsk4qVC7uRNpWER7MR+MZa7SV2ejKPPOnqWTggGVdPZ
         /k4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id i144si331940yba.4.2020.08.06.07.47.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 07:47:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: /4cvAE7wd/nM/jdke9u6zUciF8sNp5AGSIHlNLA7qHLU83ghWMlst1zB8fzk939bLCtyAqqJJm
 3xJxyxUhQk6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="153951505"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; 
   d="gz'50?scan'50,208,50";a="153951505"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2020 07:47:40 -0700
IronPort-SDR: Gu6VTGeg35qyqoE03rGsge5msuMeh//Sz39HqTxBJLNG1Fq6s53/J91TvPfs95v8aoUcj5UyFX
 tYo5X/g0Atsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; 
   d="gz'50?scan'50,208,50";a="307045437"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 06 Aug 2020 07:47:38 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k3hBB-0001OL-D4; Thu, 06 Aug 2020 14:47:37 +0000
Date: Thu, 6 Aug 2020 22:46:40 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [mlankhorst:locking-rework 31/31]
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c:242:22: error: no member named
 'lock' in 'struct drm_i915_gem_object::(anonymous at
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h:196:2)'
Message-ID: <202008062234.b5iHSLMY%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   git://people.freedesktop.org/~mlankhorst/linux locking-rework
head:   e4824ec03388895de61fbd106cfba7c6f5602ff6
commit: e4824ec03388895de61fbd106cfba7c6f5602ff6 [31/31] remove obj->mm.loc=
k
config: x86_64-randconfig-a015-20200806 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 076b12=
0bebfd727b502208601012a44ab2e1028e)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout e4824ec03388895de61fbd106cfba7c6f5602ff6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c:242:22: error: no member nam=
ed 'lock' in 'struct drm_i915_gem_object::(anonymous at drivers/gpu/drm/i91=
5/gem/i915_gem_object_types.h:196:2)'
           mutex_lock(&obj->mm.lock);
                       ~~~~~~~ ^
   drivers/gpu/drm/i915/gem/i915_gem_userptr.c:249:24: error: no member nam=
ed 'lock' in 'struct drm_i915_gem_object::(anonymous at drivers/gpu/drm/i91=
5/gem/i915_gem_object_types.h:196:2)'
           mutex_unlock(&obj->mm.lock);
                         ~~~~~~~ ^
>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c:441:6: warning: shift count =
>=3D width of type [-Wshift-count-overflow]
           if (overflows_type(args->user_size, obj->base.size))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'ove=
rflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^  ~~~~~~~~~~~~~~~~
   1 warning and 2 errors generated.

vim +242 drivers/gpu/drm/i915/gem/i915_gem_userptr.c

5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  229 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  230  int i915_gem_object_userptr_submit_begin(struct drm_i9=
15_gem_object *obj)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  231  {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  232  	struct sg_table *pages;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  233  	int err;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  234 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  235  	err =3D i915_gem_object_unbind(obj, I915_GEM_OBJECT_U=
NBIND_ACTIVE);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  236  	if (err)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  237  		return err;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  238 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  239  	if (GEM_WARN_ON(i915_gem_object_has_pinned_pages(obj)=
))
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  240  		return -EBUSY;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  241 =20
cd91d7dd25dd383 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-08-05 @242  	mutex_lock(&obj->mm.lock);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  243 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  244  	pages =3D __i915_gem_object_unset_pages(obj);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  245  	if (!IS_ERR_OR_NULL(pages))
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  246  		i915_gem_userptr_put_pages(obj, pages);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  247 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  248  	err =3D ____i915_gem_object_get_pages(obj);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  249  	mutex_unlock(&obj->mm.lock);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  250 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  251  	return err;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  252  }
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  253 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  254  int i915_gem_object_userptr_submit_init(struct drm_i91=
5_gem_object *obj)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  255  {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  256  	struct drm_i915_private *i915 =3D to_i915(obj->base.d=
ev);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  257  	const unsigned long num_pages =3D obj->base.size >> P=
AGE_SHIFT;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  258  	struct page **pvec;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  259  	unsigned int gup_flags =3D 0;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  260  	unsigned long notifier_seq;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  261  	int pinned, ret;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  262  	bool reffed =3D false;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  263 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  264  	if (obj->userptr.notifier.mm)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  265  		notifier_seq =3D mmu_interval_read_begin(&obj->userp=
tr.notifier);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  266 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  267  	if (obj->userptr.notifier.mm && obj->userptr.notifier=
.mm !=3D current->mm)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  268  		return -EFAULT;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  269 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  270  	pvec =3D kvmalloc_array(num_pages, sizeof(struct page=
 *), GFP_KERNEL);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  271  	if (!pvec)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  272  		return -ENOMEM;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  273 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  274  	/*
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  275  	 * Using __get_user_pages_fast() with a read-only
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  276  	 * access is questionable. A read-only page may be
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  277  	 * COW-broken, and then this might end up giving
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  278  	 * the wrong side of the COW..
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  279  	 *
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  280  	 * We may or may not care.
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  281  	 */
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  282  	if (!i915_gem_object_is_readonly(obj))
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  283  		gup_flags |=3D FOLL_WRITE;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  284 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  285  	pinned =3D ret =3D 0;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  286  	while (pinned < num_pages) {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  287  		ret =3D pin_user_pages_fast(obj->userptr.ptr + pinne=
d * PAGE_SIZE,
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  288  					  num_pages - pinned, gup_flags,
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  289  					  &pvec[pinned]);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  290  		if (ret < 0)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  291  			break;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  292 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  293  		pinned +=3D ret;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  294  	}
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  295 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  296  	if (ret >=3D 0) {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  297  		ret =3D 0;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  298 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  299  		mutex_lock(&i915->mm.notifier_lock);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  300  		if (!obj->userptr.page_ref++) {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  301  			obj->userptr.pvec =3D pvec;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  302  			obj->userptr.notifier_seq =3D notifier_seq;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  303  			reffed =3D true;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  304  		}
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  305  		mutex_unlock(&i915->mm.notifier_lock);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  306  	}
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  307 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  308  	if (!reffed) {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  309  		unpin_user_pages(pvec, pinned);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  310  		kvfree(pvec);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  311  	}
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  312 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  313  	return ret;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  314  }
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  315 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  316  int i915_gem_object_userptr_submit_done(struct drm_i91=
5_gem_object *obj)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  317  {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  318  	if (obj->userptr.notifier.mm &&
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  319  	    mmu_interval_read_retry(&obj->userptr.notifier,
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  320  				    obj->userptr.notifier_seq)) {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  321  		/* We collided with the mmu notifier, need to retry =
*/
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  322 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  323  		return -EAGAIN;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  324  	}
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  325 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  326  	return 0;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  327  }
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  328 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  329  void i915_gem_object_userptr_submit_fini(struct drm_i9=
15_gem_object *obj)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  330  {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  331  	i915_gem_object_userptr_drop_ref(obj);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  332  }
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  333 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  334  static void
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  335  i915_gem_userptr_release(struct drm_i915_gem_object *o=
bj)
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  336  {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  337  	if (!obj->userptr.notifier.mm)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  338  		return;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  339 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  340  	mmu_interval_notifier_remove(&obj->userptr.notifier);
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  341  	obj->userptr.notifier.mm =3D NULL;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  342  }
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  343 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  344  static int
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  345  i915_gem_userptr_dmabuf_export(struct drm_i915_gem_obj=
ect *obj)
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  346  {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  347  	/* Needs to be created with an interval notifier */
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  348  	if (!obj->userptr.notifier.mm)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  349  		return -EPERM;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  350 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  351  	return 0;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  352  }
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  353 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  354  const struct drm_i915_gem_object_ops i915_gem_userptr_=
ops =3D {
7d192daa73d9f37 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Chris Wilson   =
    2020-05-29  355  	.name =3D "i915_gem_object_userptr",
3599a91cc8d0754 drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-11-01  356  	.flags =3D I915_GEM_OBJECT_HAS_STRUCT_PAGE |
484d9a844d0d0ae drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2019-01-15  357  		 I915_GEM_OBJECT_IS_SHRINKABLE |
f6c26b555e14fb2 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Janusz Krzyszto=
fik 2020-02-04  358  		 I915_GEM_OBJECT_NO_MMAP |
484d9a844d0d0ae drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2019-01-15  359  		 I915_GEM_OBJECT_ASYNC_CANCEL,
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  360  	.get_pages =3D i915_gem_userptr_get_pages,
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  361  	.put_pages =3D i915_gem_userptr_put_pages,
de4726649b6b1d7 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2016-01-22  362  	.dmabuf_export =3D i915_gem_userptr_dmabuf_export,
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  363  	.release =3D i915_gem_userptr_release,
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  364  };
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  365 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  366  #endif
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  367 =20
a5a5ae2abe3ba77 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-02-08  368  /*
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  369   * Creates a new mm object that wraps some normal memo=
ry from the process
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  370   * context - user memory.
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  371   *
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  372   * We impose several restrictions upon the memory bein=
g mapped
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  373   * into the GPU.
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  374   * 1. It must be page aligned (both start/end addresse=
s, i.e ptr and size).
ec8b0dd51c50e33 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-07-21  375   * 2. It must be normal system memory, not a pointer i=
nto another map of IO
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  376   *    space (e.g. it must not be a GTT mmapping of ano=
ther object).
ec8b0dd51c50e33 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-07-21  377   * 3. We only allow a bo as large as we could in theor=
y map into the GTT,
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  378   *    that is we limit the size to the total size of t=
he GTT.
ec8b0dd51c50e33 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-07-21  379   * 4. The bo is marked as being snoopable. The backing=
 pages are left
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  380   *    accessible directly by the CPU, but reads and wr=
ites by the GPU may
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  381   *    incur the cost of a snoop (unless you have an LL=
C architecture).
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  382   *
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  383   * Synchronisation between multiple users and the GPU =
is left to userspace
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  384   * through the normal set-domain-ioctl. The kernel wil=
l enforce that the
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  385   * GPU relinquishes the VMA before it is returned back=
 to the system
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  386   * i.e. upon free(), munmap() or process termination. =
However, the userspace
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  387   * malloc() library may not immediately relinquish the=
 VMA after free() and
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  388   * instead reuse it whilst the GPU is still reading an=
d writing to the VMA.
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  389   * Caveat emptor.
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  390   *
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  391   * Also note, that the object created here is not curr=
ently a "first class"
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  392   * object, in that several ioctls are banned. These ar=
e the CPU access
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  393   * ioctls: mmap(), pwrite and pread. In practice, you =
are expected to use
cc917ab43541db3 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2015-10-13  394   * direct access via your pointer rather than use thos=
e ioctls. Another
cc917ab43541db3 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2015-10-13  395   * restriction is that we do not allow userptr surface=
s to be pinned to the
cc917ab43541db3 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2015-10-13  396   * hardware and so we reject any attempt to create a f=
ramebuffer out of a
cc917ab43541db3 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2015-10-13  397   * userptr.
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  398   *
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  399   * If you think this is a good interface to use to pas=
s GPU memory between
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  400   * drivers, please use dma-buf instead. In fact, where=
ver possible use
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  401   * dma-buf instead.
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  402   */
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  403  int
a5a5ae2abe3ba77 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-02-08  404  i915_gem_userptr_ioctl(struct drm_device *dev,
a5a5ae2abe3ba77 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-02-08  405  		       void *data,
a5a5ae2abe3ba77 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-02-08  406  		       struct drm_file *file)
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  407  {
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  408  #ifdef CONFIG_MMU_NOTIFIER
7867d709959927e drivers/gpu/drm/i915/gem/i915_gem_userptr.c Chris Wilson   =
    2019-10-22  409  	static struct lock_class_key lock_class;
0031fb96859caad drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-11-04  410  	struct drm_i915_private *dev_priv =3D to_i915(dev);
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  411  	struct drm_i915_gem_userptr *args =3D data;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  412  	struct drm_i915_gem_object *obj;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  413  	int ret;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  414  	u32 handle;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  415 =20
0031fb96859caad drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-11-04  416  	if (!HAS_LLC(dev_priv) && !HAS_SNOOP(dev_priv)) {
ca377809d657ea3 drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-03-02  417  		/* We cannot support coherent userptr objects on hw =
without
ca377809d657ea3 drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-03-02  418  		 * LLC and broken snooping.
ca377809d657ea3 drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-03-02  419  		 */
ca377809d657ea3 drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-03-02  420  		return -ENODEV;
ca377809d657ea3 drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-03-02  421  	}
ca377809d657ea3 drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin =
    2016-03-02  422 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  423  	if (args->flags & ~(I915_USERPTR_READ_ONLY |
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  424  			    I915_USERPTR_UNSYNCHRONIZED))
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  425  		return -EINVAL;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  426 =20
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  427  	/*
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  428  	 * XXX: There is a prevalence of the assumption that =
we fit the
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  429  	 * object's page count inside a 32bit _signed_ variab=
le. Let's document
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  430  	 * this and catch if we ever need to fix it. In the m=
eantime, if you do
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  431  	 * spot such a local variable, please consider fixing=
!
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  432  	 *
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  433  	 * Aside from our own locals (for which we have no ex=
cuse!):
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  434  	 * - sg_table embeds unsigned int for num_pages
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  435  	 * - get_user_pages*() mixed ints with longs
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  436  	 */
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  437 =20
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  438  	if (args->user_size >> PAGE_SHIFT > INT_MAX)
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  439  		return -E2BIG;
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  440 =20
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17 @441  	if (overflows_type(args->user_size, obj->base.size))
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  442  		return -E2BIG;
24860ad748688b1 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld   =
    2020-01-17  443 =20
c11c7bfd2134957 drivers/gpu/drm/i915/i915_gem_userptr.c     Matthew Auld   =
    2018-05-02  444  	if (!args->user_size)
c11c7bfd2134957 drivers/gpu/drm/i915/i915_gem_userptr.c     Matthew Auld   =
    2018-05-02  445  		return -EINVAL;
c11c7bfd2134957 drivers/gpu/drm/i915/i915_gem_userptr.c     Matthew Auld   =
    2018-05-02  446 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  447  	if (offset_in_page(args->user_ptr | args->user_size))
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  448  		return -EINVAL;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  449 =20
96d4f267e40f950 drivers/gpu/drm/i915/i915_gem_userptr.c     Linus Torvalds =
    2019-01-03  450  	if (!access_ok((char __user *)(unsigned long)args->us=
er_ptr, args->user_size))
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  451  		return -EFAULT;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  452 =20
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  453  	/* Require mmu notifier now */
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  454  	if (args->flags & I915_USERPTR_UNSYNCHRONIZED)
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  455  		return -ENODEV;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  456 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  457  	if (args->flags & I915_USERPTR_READ_ONLY) {
0b100760e3e8cbb drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-07-12  458  		/*
0b100760e3e8cbb drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-07-12  459  		 * On almost all of the older hw, we cannot tell the=
 GPU that
0b100760e3e8cbb drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-07-12  460  		 * a page is readonly.
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  461  		 */
e6ba76480299a0d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Chris Wilson   =
    2019-12-21  462  		if (!dev_priv->gt.vm->has_read_only)
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  463  			return -ENODEV;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  464  	}
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  465 =20
13f1bfd3b3329b1 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2019-02-28  466  	obj =3D i915_gem_object_alloc();
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  467  	if (obj =3D=3D NULL)
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  468  		return -ENOMEM;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  469 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  470  	drm_gem_private_object_init(dev, &obj->base, args->us=
er_size);
7867d709959927e drivers/gpu/drm/i915/gem/i915_gem_userptr.c Chris Wilson   =
    2019-10-22  471  	i915_gem_object_init(obj, &i915_gem_userptr_ops, &loc=
k_class);
c0a51fd07b1dd50 drivers/gpu/drm/i915/i915_gem_userptr.c     Christian K=C3=
=B6nig    2018-02-16  472  	obj->read_domains =3D I915_GEM_DOMAIN_CPU;
c0a51fd07b1dd50 drivers/gpu/drm/i915/i915_gem_userptr.c     Christian K=C3=
=B6nig    2018-02-16  473  	obj->write_domain =3D I915_GEM_DOMAIN_CPU;
b8f55be64453ea7 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2017-08-11  474  	i915_gem_object_set_cache_coherency(obj, I915_CACHE_L=
LC);
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  475 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  476  	obj->userptr.ptr =3D args->user_ptr;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  477  	obj->userptr.notifier_seq =3D ULONG_MAX;
0b100760e3e8cbb drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-07-12  478  	if (args->flags & I915_USERPTR_READ_ONLY)
0b100760e3e8cbb drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2018-07-12  479  		i915_gem_object_set_readonly(obj);
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  480 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  481  	/* And keep a pointer to the current->mm for resolvin=
g the user pages
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  482  	 * at binding. This means that we need to hook into t=
he mmu_notifier
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  483  	 * in order to detect if the mmu is destroyed.
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  484  	 */
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  485  	ret =3D i915_gem_userptr_init__mmu_notifier(obj, args=
->flags);
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  486  	if (ret =3D=3D 0)
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  487  		ret =3D drm_gem_handle_create(file, &obj->base, &han=
dle);
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  488 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  489  	/* drop reference from allocate - handle holds it now=
 */
f0cd518206e1a47 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2016-10-28  490  	i915_gem_object_put(obj);
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  491  	if (ret)
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  492  		return ret;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  493 =20
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  494  	args->handle =3D handle;
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  495  	return 0;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  496  #else
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  497  	return -ENODEV;
71d98df6e1a246d drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhor=
st  2020-07-10  498  #endif
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  499  }
5cc9ed4b9a7ac57 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson   =
    2014-05-16  500 =20

:::::: The code at line 242 was first introduced by commit
:::::: cd91d7dd25dd3836e74489cd21c16336c3cd016c drm/i915: Flatten obj->mm.l=
ock

:::::: TO: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
:::::: CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202008062234.b5iHSLMY%25lkp%40intel.com.

--2oS5YaxWCcQjTEyO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
NH0RxkFMluEhTU700HiA9Q/VGpbisTZt4yt1eS8zJXtjfZUgaLks068WqaUu77rkUnSwWDDb
1jfxPla7xtioR/C9OcRtyn6DrZZskCssq8ZZYVztLoaWaGz6lr+LJKGqLmpTdJQ+TEldplwi
1FYOFT3yLgU77pqa3gUYOylxFeV+723T5dRmUbzHmJbv9Rjteh33TVW5RBgKYip5VZAeq0fM
C9WCJ9mpNwfxmeXaObLMD02v3khxsqlZmHaV9DFKQ9pOSbBxQ2orXmR2JT7ifOPJS9LAk1cM
73LH5xNLmTl1qPbFsE9Yj84yjLN0weCf88FYiC2PWRHq0QokPxe7LunJF+m8Qs0l6UCu1FpQ
9b3Be+nIQLziOo99ccXX9qaYhZYFe/IGHeBH+ETr0vwjb7Ortsmh/gv+9QL3qqtdWJHiH34g
x0SUkU0oP3PkLVTU9wM0d94RtYK2bpi4EJ4HdPvX39+fPz29iGMcLRK2R+UOuW5aTr6meXG2
dggPYHTWAgDPHH1yPDfItyLo+uPzLkmfbymt/OV8ojVolG5mRMZTjP0rtI3ODaW3ymFb2qc8
oC3wnv+iKmNHdFJC1Kdq2J32e7Qp8aTcNHmbXJza29vzt79ub9A+izpXX5wmVab9pHToxiOK
RJv0iIa2/pp4EW0JiHB1XskHQd9Yu1jd4jdc42n7EItirPI7+EjLTMFhs/K8yLYuj90gQlqp
dRcaXsdslOxUVY+zZlcepmRHqPN0B5tx27Ci10bd3tSZ7mG/G0ptdZhGhM5aodEdqaLcwxDV
KcrVlCAtGlqF3OulEn/uqZsgTh/LZzuOT1yitnQKzS63j62Zq07tW9jMlP9DpoGddmxFezTz
dnVmMVlWk8z/Qb5yn73XXnsYCQNjdF9MfUxns7fe22ps4xB4vyhiUMwL0KiZ+vZ2+/T65dsr
hj/69Pr1j+c/f749TVdwUkJ4Ga4XFmnDsW5x97IWNbcYtfGJrI8HY5Ibs+BUpyjmmi23IKtZ
SmzGqKDZSM2IfeaOi1OPopIhcR/WJ9rBduWSZujRblyDrB/D9Bwqc+MTxjjWr4xl5TBku0NL
0UTxdI34BK5WDc00JAW2tAC/PxCndPrHNpf6gf+EYd0qi9JMtdxNC3yPsprF4bjgOKWMajMB
HjOfMd9THhmKfLmPRu7xa55p/d/fbr+kwp/2t5fbv25vv2Y36dcd++/nH5/+Mq0SRJIVet8o
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

--2oS5YaxWCcQjTEyO--
