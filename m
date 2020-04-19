Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIXA6H2AKGQE3IOUDPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A071AFBBA
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 17:37:08 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id j16sf7095667pgg.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 08:37:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587310627; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqPKLpDmTyhMED+cr5Q9uqeBcO3iJrQbldNrdCdqensOKlnBXGu9Wi/ZzC2pRuOx38
         uqoOocADZg/C0JrnG5MnrEJWjk9qqRl57b0+xVfHMO/ilqobQhINSiY17CpXajX+NQ4R
         1mSg9iCn3vzE2CPdT453ks9pSaXGAMhYjWmk3C2FMEan1tMnXGF/JnmBHS2DrjhZsCXA
         X42N9Ocn/ZNQGnMqaAPah5WSjUPRXuF2DMafgJ/FkDFh1zGyJDbXKIxNgPqvDlQl/I5b
         rouzw651j8Rh/HmWH+aZEcLUc5gfW0NH/knQC6pFybFzJHC5gZoOODy6m86b+9PVNmlz
         AQRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qexVTROEnqL/kTeLxUMU7jY1wCBZvNz4K9NCDERXCAQ=;
        b=NZHIU/lXaWNOQMcYAfzY7jcksIAvyC7JL0TDidLAVRssJzNQl8eJpvqaZD9ZjRkTgB
         HegsRGidq94I+6xcs82pWkZq8bMPk0AsWlSdliZd3Uw3Ip2Ol+jNJdqdsKLXB/KQgLUI
         uMnDtRpqBgMUJMOk7elSOcdeCasjs4zDtMXejbZvV1ukJ/YdDKMTgxKXSdFpfn6Mrohc
         T9cAhjQDRWM1SZ/b9sImAdTBnuzSUQRRtrz4b7NDZjLJnt0eZfXRpWqOeN/LMikZ2Q2Y
         qZmfAL8NPlEK3RWV/EWOrRt3m/pz+b4uvk1odx3yLYKkOFCXl6aW2wU8XQOJWFUmnzaW
         WSpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V0lqQZIH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qexVTROEnqL/kTeLxUMU7jY1wCBZvNz4K9NCDERXCAQ=;
        b=ow0zkY2hdGAQ5iSYq3Nk+LEzlBWi0F5rCRZxQruQa28B6oUsNfqRTyn3SMz2bR5bAT
         ALa+Ylh+LfIRP5042BGxE1YZwZszNAmyJBzR4xTOvP7nYKFFOcN02OTX3aVf2/J8XFuL
         8iSTRuF1UZFQOtF2rHig8E2xnBoWkmiJSRIyGJNytfI8vR0VKKMYCiKJWSxsl0+o7UGU
         9dqfBEt7KSh0k1u7TiC8uFEQGQ90c2fcH66UelpvWJfAzwOpNQgHwmlUFZOlJq3Rv3IE
         1dP7tmDuMMkeMq5pCOA9Tn0g6/9u1tiaTBQ6Um+YkkwYWaXyCyyeBGPsYzSxBs/FofyK
         ekxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qexVTROEnqL/kTeLxUMU7jY1wCBZvNz4K9NCDERXCAQ=;
        b=Zuj6LpFQH7mmvZrgV8u41heE5uYdUTsBH5fJfEJIbG2N5iQo1VVI90bBXObuZkz0FD
         VeBUbxB3QKTRPmBwrUMDEKCvD1zq4jsBP4FrEWPShFfOUr9KVWvSLpLmvhWL1cqiBKP9
         xnTAkHEy6+nCzLHmArFgdywLBDskEJzJ6OVT+U6p5UOGpdw54Hzr6f/Gv8t5fPiBbM5k
         o/EWM9VlRFeFMS9hjYSdQP0xBH2vtK6Knca9udYAkDEzbPNZHB1jZPVxdagIptS2Ne9d
         r9VCLpGk2bBv+liCw2wK5J+ANA8Ok4W+ra3B6SluyW6MJqg9KfLkfXvJfOj3KD3Il3Gj
         7llA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qexVTROEnqL/kTeLxUMU7jY1wCBZvNz4K9NCDERXCAQ=;
        b=hWr+n1lKz9QFwoSt8CBaI7VFexuPYoWGdVttUt97yX7M0/CTGWdN1kW3Gtp6PrJB/q
         DFEXpc+/dgHGAacHvUBDyht2OHtGmQGWP7QehvB4RHaVVtMt2Jf5ahVMra/kOyZIMSQN
         D5Jr7cqctKJzSmeZ/g71uoBsfvp8yKvw3sk7z3RtfmrmLrpF+l3FUODtgx9aIoNz0pOv
         X7MpHsFVsdatWqQkhlg1UI3Ed+u54/1Lcp0olOX8pe1J+13Y98k76HvzgjHknYmcCnWB
         AJwGj0+PVejjtSl0uWOztxY/rEGfTuNo4P1oExIkxANJE4V4XFQIDCG9iUr5F+LOcIgA
         7aSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYbP3k1qd3pVO3fSIWS3DJcCCautrIuuTa+fIBl4ecdDWLABr/O
	vYhyWkTjijOZkQ/zqRxJ4Y8=
X-Google-Smtp-Source: APiQypIapTmtr5ikdFAyvYsGISUb9CgCPmvti2o2+VMXxKIEBE+LiqnmFmhjPoQx3A6hCJRTXVmx5A==
X-Received: by 2002:a17:902:b101:: with SMTP id q1mr12331574plr.246.1587310626730;
        Sun, 19 Apr 2020 08:37:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:63:: with SMTP id 90ls7044849pla.10.gmail; Sun, 19
 Apr 2020 08:37:06 -0700 (PDT)
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr16777430pjb.145.1587310626431;
        Sun, 19 Apr 2020 08:37:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587310626; cv=none;
        d=google.com; s=arc-20160816;
        b=wFArf5hYQEDFTYIEc923o/JAreKYw+bRt0bIso7KZ2Vv8OK0O9ZMi9RnikShVhwThW
         wvRuQhg60l0FagHKzbWgwQI1dgt/qMzGIVVy4yzFgB1pCMPFaypdw6Z/Zn2dBrL+OJ2e
         b+6scSaOmBBlfsOoaF4Sx1xkEXkYIGRjYDlPpVqLC0Fxn7ZvgjmxX0NwuXF9GsQcvITZ
         UWyWb3kxaKpUjHiIcLzoX5z6HS8iXzQ4e8snJOlgfDwUfY2Quwm2CBZiy0sHyTeUSw2Q
         soX7EpK9bjqrCPqpD3XKypx88Ul3CofPbQH2+ghgga1St/pN1lHkFWfVI8jJrqas37+g
         16Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5HPkHkilPOStTzSXVFfPa6HLneZJ21Zsjdgq+nilkL4=;
        b=T18/gXuAh4MJtHP+1fD8a55VfsXJhXkzBGKZ8fkP7GnzoYdlHOdDOz3K6gwSyE9UJ6
         JVWJNYmDoXQxgZu/Ysq2eUq8UMoU+c6KdojYQTf+1/eR86xwiUx0F/9jbbuK9sgQhhAO
         zW0uXWikPUEk8T0G3QQuII7NpmquC47zaAOkEEMaqf35rsSZFYW5UeRBDC2GzjpReBQK
         VytMIvI6AgrQI0+qM2C/H8uqCpfuF2wsB5E6YDi6qHYaTrgBIDk/j7Krw1hiBQFIlbcU
         b6FUs8lmgRJhfSQ+73/FEOXZ00WI8Wdyk83AAlrlTGLRuzysDz4sUr6IANdTaZfuBoAk
         kt4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V0lqQZIH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id c20si159091pls.0.2020.04.19.08.37.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 08:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id i27so5820566ota.7
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 08:37:06 -0700 (PDT)
X-Received: by 2002:a9d:728e:: with SMTP id t14mr6631841otj.63.1587310625625;
        Sun, 19 Apr 2020 08:37:05 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id m12sm173807oov.41.2020.04.19.08.37.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 19 Apr 2020 08:37:04 -0700 (PDT)
Date: Sun, 19 Apr 2020 08:37:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
	Jessica Yu <jeyu@kernel.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kbuild: Set CLANG_VERSION only when Clang is used
Message-ID: <20200419153703.GA41789@ubuntu-s3-xlarge-x86>
References: <20200419123612.173187-1-sedat.dilek@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200419123612.173187-1-sedat.dilek@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V0lqQZIH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Apr 19, 2020 at 02:36:12PM +0200, Sedat Dilek wrote:
> Do like GCC_VERSION is set when GCC (see CC_IS_GCC) is used.
> 
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---
>  init/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index 9e22ee8fbd75..c23f9d3d6d6c 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -25,7 +25,7 @@ config CC_IS_CLANG
>  
>  config CLANG_VERSION
>  	int
> -	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> +	default $(shell,$(srctree)/scripts/clang-version.sh $(CC)) if CC_IS_CLANG
>  
>  config CC_CAN_LINK
>  	def_bool $(success,$(srctree)/scripts/cc-can-link.sh $(CC))
> -- 
> 2.26.1
> 

I don't understand the motivation behind this. The commit message needs
to be expanded upon or further clarification is needed.

CONFIG_GCC_VERSION is always set, either to 0 if using clang or the
actual version spit out by GCC so the commit message is not entirely
accurate.

It is done in the

    default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
    default 0

way because it relies on the __GNUC__, __GNUC_MINOR__, and
__GNUC_PATCHLEVEL__ preprocessor macros to figure out the verison, which
clang also defines (to 4, 2, and 1 respectively) so it has to be done
this way to avoid confusing clang for GCC.

We can handle this in clang-version.sh so that CONFIG_CLANG_VERSION is
set to zero if CONFIG_CC_IS_GCC is set, just like CONFIG_GCC_VERSION:

if ! ( $compiler --version | grep -q clang) ; then
    echo 0
    exit 1
fi

CONFIG_CLANG_VERSION needs to be defined, otherwise we are breaking the
assumption that I made in commit df3da04880b4 ("mips: Fix unroll macro
when building with Clang").

With your patch and GCC 9.3.0 building malta_defconfig:

arch/mips/include/asm/r4kcache.h: In function 'blast_scache64_node':
arch/mips/include/asm/unroll.h:29:9: error: 'CONFIG_CLANG_VERSION' undeclared (first use in this function); did you mean 'CONFIG_LD_VERSION'?
   29 |         CONFIG_CLANG_VERSION >= 80000) &&  \
      |         ^~~~~~~~~~~~~~~~~~~~
/home/nathan/src/linux/include/linux/compiler.h:330:9: note: in definition of macro '__compiletime_assert'
  330 |   if (!(condition))     \
      |         ^~~~~~~~~
/home/nathan/src/linux/include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
  350 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
      |  ^~~~~~~~~~~~~~~~~~~
/home/nathan/src/linux/include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
   39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
      |                                     ^~~~~~~~~~~~~~~~~~
/home/nathan/src/linux/include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
   50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
      |  ^~~~~~~~~~~~~~~~
/home/nathan/src/linux/arch/mips/include/asm/unroll.h:28:2: note: in expansion of macro 'BUILD_BUG_ON'
   28 |  BUILD_BUG_ON((CONFIG_GCC_VERSION >= 40700 ||  \
      |  ^~~~~~~~~~~~
/home/nathan/src/linux/arch/mips/include/asm/r4kcache.h:203:2: note: in expansion of macro 'unroll'
  203 |  unroll(times, _cache_op, insn, op, (addr) + (i++ * (lsize))); \
      |  ^~~~~~
/home/nathan/src/linux/arch/mips/include/asm/r4kcache.h:370:4: note: in expansion of macro 'cache_unroll'
  370 |    cache_unroll(32, kernel_cache, indexop,  \
      |    ^~~~~~~~~~~~
/home/nathan/src/linux/arch/mips/include/asm/r4kcache.h:376:1: note: in expansion of macro '__BUILD_BLAST_CACHE_NODE'
  376 | __BUILD_BLAST_CACHE_NODE(s, scache, Index_Writeback_Inv_SD, Hit_Writeback_Inv_SD, 64)
      | ^~~~~~~~~~~~~~~~~~~~~~~~

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419153703.GA41789%40ubuntu-s3-xlarge-x86.
