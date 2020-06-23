Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBINIY33QKGQEEWTOZQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED0920493E
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 07:33:22 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id 40sf9646535otc.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:33:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592890401; cv=pass;
        d=google.com; s=arc-20160816;
        b=xIVG2jwVHSlPBxwDFmuAPKjDvsTia0LLeMxTOpS4h3UxkVi2it2kneixsBQQk5wM0W
         xFGgVFL4HI7AKkXTGmAIJUY+Oy94TOI5XZUTHzZmtePvJjwS8Jwu+rjMgSCc5suHqFFx
         nVXQo/fwfIIXO0ZLpM4wlIHGUedYhHkZtkhL8nXKPEd4R4JLu1j8za6v0NsWrvoPd5TN
         P1rxa2CkWWGtjbzSefmR3ky5JP9bt0cwmAuwPn8ibpAd2LkQKRwmG0S8xNIWz1qbPQaz
         PqGDVz4t6vP276G0sWV6XI9ZD5NWIHEpqkLhxEY+XltWF9ethHDjgncDPCBfheoOwABe
         h3pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bmo6fwfar5jxGoh9AZXk/NKs2F10ZL468Ergmg64AtI=;
        b=eulYK2+SPle7RZAxnVosdSTq1zO/madHwS3xDzVFS0vPzeby4g++w84TsvxnaPDeoz
         NOlc1fFCnXv14AW3RZ9nbxb5ilkOZ5Ck3DmZ7sJrTN0H7XvUJdLlgtPyttAYxwPWQ38z
         1xIraphbhUbuw9OSVDN3RaRs6jxFyRvpZn5WESCWkeReR4+E8elTy2ZzYrjlR6H2Sb1C
         QxjCzGZy+DnLZd5GKr0VOSqLlVIRIhpstpdfnQuU5Yb6rRf9JKXTHAKqgNbzS2Eqvnu5
         ZMNEqSOPHv7oy2rot1uBNjj79/ksXCuVgIt6UBoiJ6t703PZMe21KvHAPWK4ugOO6kny
         Ra+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jtA58euB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bmo6fwfar5jxGoh9AZXk/NKs2F10ZL468Ergmg64AtI=;
        b=Zx/jXwltSQlBHldDPdpHyFjvhXPkcmvc7wLeMILFsr3fvuLI8yw4TA8gyROigopaPZ
         0AKQW/t9Naoc/Z947Zotit1RjrcJPe65zoIkC4ZrSt9o5sGLxWC0uWb4yly+CDMNIRkv
         6BHKpVlzWNtn6ucUZ+dG9WLs7E+V3PmpbD++7r3G1y/IrXup1TLMPP/jq8XgczRvYIBU
         /FDjIDEN9wYT1kRmN4RaaZMtqZx7VmFhTT5EMTkRiYnPBEDvOpzQKFwQMBCJMych2czI
         lhVZqK3zpdPg7/AHiMvJ0+RccjdnBkTnpB6AKQLbeMF+uNOnyWtmvhtBv24je4moW7Rl
         YdkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bmo6fwfar5jxGoh9AZXk/NKs2F10ZL468Ergmg64AtI=;
        b=nNQpjInMdPojUP/iYgbkKHOV+/MrNoUVleVPrI6UdFUgJH1KNqADuFBwbCrf7DHu2Z
         dz+ht9LWaNTjE19/wSQuGc9ahm1OphTgQTLzU52EphLlqHqGayfgjVwnA41KljFbt1or
         S6ZiLVp1ye+8kQpK0KZCPrRAGpElUTRLlTKprlmcJ4P/WUpXtJXuxzQ9jPv4Wo2tx8hV
         cw4V1Y8ysSDQ/x749McncGQStIYjwRZNYe+TZ5jKROG724uvj346FHzpl2qzIYDLFSZF
         dSxauTv0VXRnvmfUeOApYG7JP1B2UzSAOFZgwS4Fyaa9Ag6NH5SFTn5QxW7iZO+shYzF
         zABQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BlnRMhIMd6GUDBjOBJG5wVoNuwoYXj4JKFujYSjemGMdZHNnA
	AjK6oFMJl2YIy2lLLI/B9+w=
X-Google-Smtp-Source: ABdhPJwd/spZMQckudZbXbs2sKC6U0hglMjx6N+G77jAMNfVI7Pp8M246uiJEtazApizkUsbMceRaw==
X-Received: by 2002:a9d:38a:: with SMTP id f10mr17882031otf.230.1592890401417;
        Mon, 22 Jun 2020 22:33:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2116:: with SMTP id i22ls4127831otc.1.gmail; Mon,
 22 Jun 2020 22:33:21 -0700 (PDT)
X-Received: by 2002:a9d:7083:: with SMTP id l3mr17708352otj.232.1592890401102;
        Mon, 22 Jun 2020 22:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592890401; cv=none;
        d=google.com; s=arc-20160816;
        b=wC/ueXKaQnea88AR4yemKY66y1OMjw+P3dmXFXbl3u6uAm0cyKhKrhl+aw1jfKmoVx
         XUZSiALp239CtimQcXyuGibiwDIDRNMvouT8nOGIpxSZRZt4OeybWvLSkfVUoVnmZwE9
         BNiVaOs9DaxcqnZ3EahQZ1hh8ggWy3Z/PCEYSLaSKEabZj1oyBES+V3h478u6Bi79k2J
         FYL9blti3nj2Dzvhdzu+INHijIKiX6tVr/OJBhu6oANyUV0C9BMYQsfEgut/3ijES2qz
         zFIShN9Le/H3Va41u6+zUDmZE5HnS+NIC2CvUaHin5NXeBo6biidKIE7aenp0GMY8XgB
         nMOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=b511JnhcLjC2FscyUHFU/y83HtZwkMgFiFGfYX9Npuc=;
        b=FWDBvWN8AVQjoEz2i4ZCyehxQ2qOAqQ59+SYlWg11Ocrc788lYWVgtf5lom+3XxzD4
         crJfrmYuZ+865gNa2uhot4OffGriXVgr3qD+9K75XihKmPxeNs9tO2F3ARQAggauX45o
         Pdm2VcDVQFq/nWJEFs9d/VKOYe3NhlxM1d0DEDIyEH19ti6MC5gewVRjxRZxsEYRz7Tg
         NmsN8k39ib0xTbymtRIKt0xrooPoq8nz5Z6QeCjgOudUb3X9mevqNb4ENtbKyBjW1Bdy
         5Sf1me2YLHipyPrKZir/EdwxsNj4e2PJilAW0lymx/8UznDrxfZrlb9NK6Ezx7cuFk02
         iLOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jtA58euB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id h13si1403367otk.1.2020.06.22.22.33.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 22:33:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id l63so9331471pge.12
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 22:33:21 -0700 (PDT)
X-Received: by 2002:a65:6883:: with SMTP id e3mr15950036pgt.5.1592890400010;
        Mon, 22 Jun 2020 22:33:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j12sm15948055pfd.21.2020.06.22.22.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 22:33:19 -0700 (PDT)
Date: Mon, 22 Jun 2020 22:33:17 -0700
From: Kees Cook <keescook@chromium.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 2/3] x86/build: Warn on orphan section placement
Message-ID: <202006222232.B23CAE786@keescook>
References: <20200622205341.2987797-3-keescook@chromium.org>
 <202006231045.2mM5xTEM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006231045.2mM5xTEM%lkp@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jtA58euB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Jun 23, 2020 at 10:13:04AM +0800, kernel test robot wrote:
> Hi Kees,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on tip/auto-latest]
> [also build test WARNING on v5.8-rc2 next-20200622]
> [cannot apply to tip/x86/core bp/for-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Kees-Cook/x86-Warn-on-orphan-section-placement/20200623-045850
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 03e5e9954269d02edd5f6d3a73d579a60dd38c38
> config: x86_64-allnoconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1d4c87335d5236ea1f35937e1014980ba961ae34)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> ld.lld: warning: arch/x86/built-in.a(entry/entry_64.o):(_kprobe_blacklist) is being placed in '_kprobe_blacklist'
> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'

Fixed in v3, coming soon!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006222232.B23CAE786%40keescook.
