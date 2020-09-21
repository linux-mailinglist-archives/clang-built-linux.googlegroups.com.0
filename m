Return-Path: <clang-built-linux+bncBDXO746SYYBRBO5XUT5QKGQEVJORNVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E0C2734F4
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 23:31:41 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z4sf9090525pgv.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 14:31:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600723899; cv=pass;
        d=google.com; s=arc-20160816;
        b=emSFqTiwB1ltuUkz1zk1MbDiZGU1sipEu0jPhBEGtQ3WoHwMJa3ndVb5mrBqD7VGur
         2LDCC95bB5aLyMgRjYnY4dHwaUlmzFecDT9dP/vS+9ZBDqiixdwL97Hj2asfZ6nr0tFq
         L46all16hgWNX8cz0djwUbI1kvafnkSQqg7pi/68Uqfql2qHdxbsDt56ZqIcebw/zhzL
         YS4C8Yb7nubH9WPnjIbsoqlZnpFAXoFGCN/IvfGU4npi5QkktyGVng+Z4cfLvZntD/wS
         vyXLMWTLWEK6XJqHIDB4ZdaLozbz9IM6g0abTj9gnZSNescHfYeBLD/BlZAIdmcAiZmL
         1SNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=eC0fs8R6lEYBkDleP4p2bquVIEXxO0nQXKvT/Onnh4k=;
        b=JQmqG+/iQH1X0/TitpxMOX6u3TmuPJ6CU6QjRZGMbo7k0huxRpvF1I4BxHsqOF6gLs
         7Ik/gFDC+PkS5MqDG//HStKz6JVsEKXRlNRWSMGMl2GMLqImdt7Td3zIQt8KBMBgHg31
         R2ICI9UzZA7pATOjpsS/nLTur4ZAMD8ufoDPM3kFaPCeF4fsmvkOzK6oFdziTKX1HUGe
         LmtfcJ6T1syZGsEBfywoPAtIXWUNcbXh98plu4T9su04jobs1QofY2ZqhVGrMnRKQCqA
         JyvlZiPJmoJRrlPcQy5CDqO4rZGtYkIOMpLQVVBYlOuGogv6BEH7kob+prlv4MNzk/aJ
         tD2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=m5Kqn221;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=JDpWeIg5;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eC0fs8R6lEYBkDleP4p2bquVIEXxO0nQXKvT/Onnh4k=;
        b=Wwq4xsELp3d7k8+n3c6IrN1s45gKnZkpnJDRPQHW8KXGLZLRbsaGZ2xt3wkB8H/KDN
         vPb7BiyloZMk8T/eAnr1PKHKRewMZ6mX9KddQ2CqhUGr5ezBwBKPKEpc3YpiehMDbjPw
         nYU8F+87hBBUrBqCELjvIDqJbVRe7XKOR/DNOzZGSaDMEmfpnrg5idS0yFSbqmL0NA+i
         fgYknm4dmxez5R9lhci/xG/VZNyQUrxFGGVbe89FZxCi5m3RPSGuAYF5s2CL/vsFQpSu
         Jt2q3t1f0TrdIsz+m2qSoCEhHFshx0ybDbRTvhoztbsb/wso1EVPcvCb1PEAFOWzaxLZ
         3yoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eC0fs8R6lEYBkDleP4p2bquVIEXxO0nQXKvT/Onnh4k=;
        b=ZmJ73TaF5gE2OeGLRkpilJeOTJVZBzJypsuny7VdP85IJ81n/45sgjW1DPjN+z9iUn
         m16GJUil5kUpHNpKONUe/oZihNyLaUpFKDQErtb0mfwhccSQYGjsbL6a6+MEsnM6tWYx
         iVsA53LcBAaKX9qFCNqlWBer387yZC/cb3/lQyNKMKG2Gz6anHawHrDFRgbrKsMJZngC
         c72fJyoNRE+AuCwuzchNq806RUhYdlkI7ix7P/3qQeIQ36rBKgJbuP3ArvFE74lkoscy
         R7qzp3uVUXuBq9Ux0IYuKRp90mloTLsMNzputiBK/rA7wL12h/I1tDcH9EOmFzVzQjlp
         IRLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310m1k29oSdEN3BcabHn/6M0Cyx3EPT2u2JShL3gHM2kk5yBssR
	pCtfLZUkj/ye6PxWEdqN2M4=
X-Google-Smtp-Source: ABdhPJwGzbzOH/AfxsmSAt9zoTO84/VXnqAT75QJUAXJMkroyz+uCr6CTMAeVBeMR6tTKLs+RzIl+A==
X-Received: by 2002:aa7:911a:0:b029:13e:d13d:a13d with SMTP id 26-20020aa7911a0000b029013ed13da13dmr1478635pfh.37.1600723899626;
        Mon, 21 Sep 2020 14:31:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6883:: with SMTP id d125ls5030773pfc.8.gmail; Mon, 21
 Sep 2020 14:31:39 -0700 (PDT)
X-Received: by 2002:a05:6a00:844:b029:13f:dd99:d1a4 with SMTP id q4-20020a056a000844b029013fdd99d1a4mr1559163pfk.31.1600723899109;
        Mon, 21 Sep 2020 14:31:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600723899; cv=none;
        d=google.com; s=arc-20160816;
        b=bH5di3jxBW42SWZMa7jtmJT5avEK6j4+8ZYPUqkXZZXSS16eLDb09hOIC4513wpPSS
         uAyt6GqNaA6j0BbL+0RQ1mX3amYQn0rbSISgWOtAOjCNrrwzlJ0irpYlPSpaOjT2Igo7
         7/X2Xcnf0rCzr77pjIF4rLpEJmm/1IciteH8If/psm8Shs6IWMcAPoAy+ZHiOzq9B7SC
         kBUrGLbCYgawzeZNe3GEPqT+m3NHxVh7k9baj0MkqbVs8p6QwjFX+ZbhFww1nJVgzzPH
         3Fygn5Qe6oV2KL4929Bo4Tudx5YS9je1cnLNXuGgfRDaNHmy6kCShuEifAD6gQ+1a9n3
         KNPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=RtifWx/R0GyMXZv5jVgi+fz8zOv9avwWyoIpp2N2DPE=;
        b=p5xIlfvcCfDJJKoSLaHHdtbjFlenwUulhdzkI20AmjeOfd0D7CTI5ERYdeMjDbTqzM
         ljhLCS/kqnzxIrV/wKJ+LYXhVO+nuww97czCDE2o6U/3MAKIagLmEK12NFbK6BASwYe4
         9bvLYdhuN4xYgq40ttNSFXdvFo36GWN840wO36hzIAfsi2bcCBakQ8RVCZ3URhGIWys4
         UzIIRfdnGLoPswuyqx0c6qpr0B8yWbewiNAgB0JsfEM6MxrSwjYuZ+fVJW3lywXRzYZA
         sXq7/RUhKamCI6jVbkqYIzrcZooE8AlHVPXBVEmuZdJY6rmCSWFx1IotYxpsdfW765vh
         xkVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=m5Kqn221;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=JDpWeIg5;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [66.63.167.143])
        by gmr-mx.google.com with ESMTPS id d3si883025pld.1.2020.09.21.14.31.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 21 Sep 2020 14:31:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) client-ip=66.63.167.143;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 28CF98EE194;
	Mon, 21 Sep 2020 14:31:38 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1_w9Ny52yK9i; Mon, 21 Sep 2020 14:31:38 -0700 (PDT)
Received: from jarvis (c-73-35-198-56.hsd1.wa.comcast.net [73.35.198.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 646D98EE0CF;
	Mon, 21 Sep 2020 14:31:37 -0700 (PDT)
Message-ID: <2d395d924b70fba7f1867eb83946497ce1f6eb47.camel@HansenPartnership.com>
Subject: Re: [PATCH v12 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Mimi Zohar
 <zohar@linux.ibm.com>, Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, 
 David Woodhouse <dwmw2@infradead.org>, keyrings@vger.kernel.org, David
 Howells <dhowells@redhat.com>
Date: Mon, 21 Sep 2020 14:31:35 -0700
In-Reply-To: <202009210844.KCwzdqmx%lkp@intel.com>
References: <20200920163351.11293-5-James.Bottomley@HansenPartnership.com>
	 <202009210844.KCwzdqmx%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=m5Kqn221;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=JDpWeIg5;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Mon, 2020-09-21 at 08:07 +0800, kernel test robot wrote:
> Hi James,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on integrity/next-integrity]
> [also build test ERROR on linus/master v5.9-rc5 next-20200918]
> [cannot apply to security/next-testing dhowells-fs/fscache-next]
> [If your patch is applied to the wrong git tree, kindly drop us a
> note. And when submitting patch, we suggest to use '--base' as
> documented in https://git-scm.com/docs/git-format-patch]
> 
> url:    
> https://github.com/0day-ci/linux/commits/James-Bottomley/TPM-2-0-trusted-key-rework/20200921-003922
> base:   
> https://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-integrity.git
> next-integrity
> config: x86_64-randconfig-a003-20200921 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> f4e554180962aa6bc93678898b6933ea712bde50)
> reproduce (this is a W=1 build):
>         wget 
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> > > make[4]: *** No rule to make target 'security/keys/trusted-
> > > keys/tpm2key.asn1.o', needed by 'security/keys/trusted-
> > > keys/built-in.a'.
>    make[4]: *** [scripts/Makefile.build:283: security/keys/trusted-
> keys/trusted_tpm2.o] Error 1
>    make[4]: Target '__build' not remade because of errors.


So can I still add that tracking this down involved installing an
entirely unnecessary ARM build environment, which was a huge effort I
didn't need to do if you'd just provided the build log which fingered
the ASN.1 compiler problem if you know what to look for.

The reason for the problem is because ASN1 isn't selected in the
Kconfig which causes the ASN.1 compiler not to be built.  The way our
current build rules are structured causes the make rule for this simply
to be skipped, which means you have to know to look for the absence of
ASN.1 in the build log.  I propose adding this to the build rules,
which produces the much more explicit:

/home/jejb/git/linux-build/scripts/Makefile.build:387: *** CONFIG_ASN1 must be defined for the asn1_compiler.  Stop.
make[3]: *** [/home/jejb/git/linux-build/scripts/Makefile.build:505: security/keys/trusted-keys] Error 2

James

---

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a467b9323442..bca7003beac8 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -382,6 +382,11 @@ quiet_cmd_asn1_compiler = ASN.1   $(basename $@).[ch]
       cmd_asn1_compiler = $(objtree)/scripts/asn1_compiler $< \
 				$(basename $@).c $(basename $@).h
 
+ifndef CONFIG_ASN1
+$(objtree)/scripts/asn1_compiler:
+	$(error CONFIG_ASN1 must be defined for the asn1_compiler)
+endif
+
 $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
 	$(call cmd,asn1_compiler)
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2d395d924b70fba7f1867eb83946497ce1f6eb47.camel%40HansenPartnership.com.
