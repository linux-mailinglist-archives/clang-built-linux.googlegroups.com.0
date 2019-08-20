Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLPJ6DVAKGQE2KRKQNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9E596824
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 19:58:05 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id a7sf120640edm.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 10:58:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566323885; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xtfe99kh+CSOrqqfBCr5loQh++qPe1QjTOPcX875Cn/KVmS0B0mTANWd1IxGoohUXW
         WgF23cXCPbPk0LF/MkOFX/0LmviCbhd0SSV8qiUypkjcGbl90n4FajKClNqyOfN0hent
         aaJa5eV351Qb/G2js5pBv9DY/mtwoksLKCYU92/WkgIS83uXy1zj8suIdWiO0Sj1ifpt
         fPvwMfaqna3Us8pBDW+YLFyAXZjw6p/sYKziQgKfLj1cEL7mGTvw6k43NclMkFSZfk54
         W+4Xe8gdxQXEHjxLQvfS/JaWiPyTx0eBZFaoWTgbtGrfSCYV6wgry3YKCtndRz2l+yjz
         CVJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=rgdrblsxm6sQOz0y77BvU1PaIzgfY2Ghpw9c7Wa2Gkc=;
        b=jobxnAIRMLNhSeOY3woOg5UzgQizLMUQGtNvnfNQqE+z/OM/HDrc6F/XL9Zu8KBmIw
         6+vQcpMS9eWrn7EDs2flxfGE+kVfgJSBeBu/Q+Xaqy7DwkLPvJNUXd5ihNu5HP821D8y
         YNR3PIOyYwG0G+eCoIHlDwZtfZkxpYLN5FoINXmLarFYG/vBySOuagXSMb8Wng4KMklK
         zor59/RoO3RGY7bX57GjL4eLH2ze8nSOdtqNZs9ZlrpdTkeejh/mPUIOWaqqNttuhiNu
         eV3sbtzFj2OKi7K1EgIThFxCyLu3GFbw+QRs0g6q+A37qd0idBKtmQIKqZxymCAUDB1Q
         QLxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QVijRt/p";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rgdrblsxm6sQOz0y77BvU1PaIzgfY2Ghpw9c7Wa2Gkc=;
        b=Ss/s6oCBUz6rb7pQt1CE7+YEWlYjIHy1KhDiedQOE6zbfphpuYPFKJ3oSE01CcE+lU
         uCCCrynrt/zjzwMLosTesDVyRhBEn9cQ4BjS3Icx7CVVkhKGxafEF7m/9HkQFgEybSbm
         cbqN7/N6vB86Co+korsrjaTonYsADMa12zTb5nm9g+WuVWb0Waje+kZuibvNRQkFpxzN
         MSIGt5k2ATHXaMPIkghK5MZN+ywz72lf84/6u9GoqST/0b27wwmFqdymopR0SGEWoTy3
         7BmP7zcukOGMVqBkP+MnMCvZScEBuC5Cbv4zg4Y/CTvbsfZFQ6dPbgc+zOhHM5mKwPQz
         HaiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rgdrblsxm6sQOz0y77BvU1PaIzgfY2Ghpw9c7Wa2Gkc=;
        b=YfXSnLeEf3yawWLH67S8wMEFCOXy6c7hvlOWAlBw6GVkwlFNj1LNhRUJhIpNLS+b/g
         Sxx4O0x27sTkWXpSiskAAhIQc0eC96UZ0MzLOVkKZkLNSCrKtABSn9UCNBo1QsnKEjJy
         YrlOa/NDHuPqnthn8Zs/GyqNWzWwjlHn0GDQFoFaFdIaWdQlBxf3TDomBM8Zf0A2qJwt
         /EFKK2exqckzN3MspDLen8drrkpbYn978KJyPYDi41tWkEtoGm/76IFCA/KRY9hN5uuK
         fOu025mps97vK+D+FLr04q+QVxOu3ZSndN1WhO38dd3x4rtcHhAL7m/6+9w8RbT5Sx8Q
         MKYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rgdrblsxm6sQOz0y77BvU1PaIzgfY2Ghpw9c7Wa2Gkc=;
        b=Waa/FZ7IyJqh3SquK2IIzi0xtAKNK2hpm/MikvN5kB7NIiZ4aA+9vo0Iq+LdVVEHRg
         +YyGvBbLCZJy+j0zrh178IN2u+zwvsJQW4sKguo2gDNeujmnpXB3HKEv5vGJpjfBoUMj
         wSvqkoT7YDOYagh/a3Sq1Hrl/ibHmoQ7N9Z0XmqBUdKEQxmvGaCFFDYfjOl5s0ggQsEj
         AtagN7S+rlGs8JdW/dgsUoiRz+Vq1V7shnv/lCAGGONpQqlYsZyGq5aSbxLCjvuFRMQ7
         9vUMgiUa7em+6GAgGqD/DW42V3r2RLMLrhCSFwz6smXJ8//6rzfcrKezeUvrNfOKY4NM
         Rdfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0vF4yLxNGRegx1oJUCk3rJjqtMn6NVT3oT51yNVT3Cvu0nIH4
	OgJp2+qhFiu/Dz98ITuz388=
X-Google-Smtp-Source: APXvYqwy6B1ieD3jzaF1j9ezeun9U+/ieOnQQ4RzkjqI5bINJKC2dlQK0h+DS9Ck5HnFapFtrJZamA==
X-Received: by 2002:a17:906:811:: with SMTP id e17mr28203086ejd.274.1566323885083;
        Tue, 20 Aug 2019 10:58:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:420c:: with SMTP id oh20ls2963524ejb.12.gmail; Tue,
 20 Aug 2019 10:58:04 -0700 (PDT)
X-Received: by 2002:a17:907:207a:: with SMTP id qp26mr27169717ejb.12.1566323884573;
        Tue, 20 Aug 2019 10:58:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566323884; cv=none;
        d=google.com; s=arc-20160816;
        b=RM2RBDyQdtfyd3Yu025g7tnG1ndBu1VVGq7SLIGsnBjzA8V3hK9X+2ESIB1bNK6XyE
         5nmC9ySAB+ue0eQ7UiUQhVI0EVa6z5f5l7nxud93ibk61kHKixwUknqGvofwZ7D2qJxh
         8agkx8O+llXuDr8HINkrFX1GlyAxa2SS6P1/BcHa5k6DK8MJ6SPGixLsmuCeOw9cp2xv
         f2vMV56R0Nc/evqD8bRgxoot1P7BLV7MqEa7m+nyTC7vsyZDpEZVAPnQQMkAidCm3Ujz
         jXYlcIqhOuC5Gso8FMTe/ENXx0JWyzuk7GDjndO8BqeWD0wrVZ4/EDaYKGgNWfiF5GlF
         P0GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nL5wmWAkInloOmP6KaWDiP57TY5h/6kIVcxnHD5OgX8=;
        b=PpdxsryMzWyPdod2rILjrJimslp8W3QOytCqblpS1aJ2KDEM3Hfin4Lviopy3BEIZr
         PQoze8Ye03jFRRhsi6W5YrBWFLdanlah2I+KVvDUk7FIuOp7rmcLqgZ+0P5/JPU3fV15
         3GTixbNNNj0piID3LbA8jHWta+jFztxzWbLRkdBdhz16BGJAy6v1uySN+gmDO+ao8r8Y
         6ulzd2qKBHjuAUWmAF8VhyIVGorap/d0Mp+pTuQKSiRM88tt1QSgJOyE5+cAeQ62ExHN
         d8aFt/c8BIyLJ4c+KWlHUeYNkQOYbdvGTHB2uP616mh4IzCeKt0raU3JmBIP9fVdPc3r
         3dUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QVijRt/p";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d22si922952edq.5.2019.08.20.10.58.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 10:58:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id k2so13315901wrq.2
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 10:58:04 -0700 (PDT)
X-Received: by 2002:adf:ecc3:: with SMTP id s3mr36531412wro.302.1566323884062;
        Tue, 20 Aug 2019 10:58:04 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id i5sm20817729wrn.48.2019.08.20.10.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 10:58:03 -0700 (PDT)
Date: Tue, 20 Aug 2019 10:58:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] powerpc: Don't add -mabi= flags when building with Clang
Message-ID: <20190820175801.GA9420@archlinux-threadripper>
References: <20190818191321.58185-1-natechancellor@gmail.com>
 <20190819091930.GZ31406@gate.crashing.org>
 <20190820031538.GC30221@archlinux-threadripper>
 <20190820124033.GQ31406@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190820124033.GQ31406@gate.crashing.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="QVijRt/p";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 20, 2019 at 07:40:33AM -0500, Segher Boessenkool wrote:
> On Mon, Aug 19, 2019 at 08:15:38PM -0700, Nathan Chancellor wrote:
> > On Mon, Aug 19, 2019 at 04:19:31AM -0500, Segher Boessenkool wrote:
> > > On Sun, Aug 18, 2019 at 12:13:21PM -0700, Nathan Chancellor wrote:
> > > > When building pseries_defconfig, building vdso32 errors out:
> > > > 
> > > >   error: unknown target ABI 'elfv1'
> > > > 
> > > > Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
> > > > powerpc64le toolchain") added these flags to fix building GCC but
> > > > clang is multitargeted and does not need these flags. The ABI is
> > > > properly set based on the target triple, which is derived from
> > > > CROSS_COMPILE.
> > > 
> > > You mean that LLVM does not *allow* you to select a different ABI, or
> > > different ABI options, you always have to use the default.  (Everything
> > > else you say is true for GCC as well).
> > 
> > I need to improve the wording of the commit message as it is really that
> > clang does not allow a different ABI to be selected for 32-bit PowerPC,
> > as the setABI function is not overridden and it defaults to false.
> 
> > GCC appears to just silently ignores this flag (I think it is the
> > SUBSUBTARGET_OVERRIDE_OPTIONS macro in gcc/config/rs6000/linux64.h).
> 
> What flag?  -mabi=elfv[12]?

Yes.

> (Only irrelevant things are ever ignored; otherwise, please do a bug
> report).

I believe that is the case here but looking at the GCC source gives me a
headache.

> > It can be changed for 64-bit PowerPC it seems but it doesn't need to be
> > with clang because everything is set properly internally (I'll find a
> > better way to clearly word that as I am sure I'm not quite getting that
> > subtlety right).
> 
> You can have elfv2 on BE, and e.g. the sysv ABI on LE.  Neither of those
> is tested a lot.
> 
> > > (-mabi= does not set a "target ABI", fwiw, it is more subtle; please see
> > > the documentation.  Unless LLVM is incompatible in that respect as well?)
> > 
> > Are you referring to the error message?
> 
> Yup.
> 
> > I suppose I could file an LLVM
> > bug report on that but that message applies to all of the '-mabi='
> > options, which may refer to a target ABI.
> 
> That depends on what you call "an ABI", I guess.  You can call any ABI
> variant a separate ABI: you'll have to rebuild all of userland.  You can
> also says ELFv1 and ELFv2 are pretty much the same thing, which is true
> as well.  The way -mabi= is defined is the latter:
> 
> '-mabi=ABI-TYPE'
>      Extend the current ABI with a particular extension, or remove such
>      extension.  Valid values are 'altivec', 'no-altivec',
>      'ibmlongdouble', 'ieeelongdouble', 'elfv1', 'elfv2'.
> 
> 
> Segher

The GCC documentation also has this description for '-mabi=elfv1' and
'-mabi=elfv2':

-mabi=elfv1:
Change the current ABI to use the ELFv1 ABI. This is the default ABI for
big-endian PowerPC 64-bit Linux. Overriding the default ABI requires
special system support and is likely to fail in spectacular ways.

-mabi=elfv2:
Change the current ABI to use the ELFv2 ABI. This is the default ABI for
little-endian PowerPC 64-bit Linux. Overriding the default ABI requires
special system support and is likely to fail in spectacular ways.

https://gcc.gnu.org/onlinedocs/gcc/RS_002f6000-and-PowerPC-Options.html#index-mabi_003delfv1

Thinking about this a little bit more, I think this patch is correct in
the case that clang is cross compiling because the target triple will
always be specified (so the default ABI doesn't need to be changed).
However, I am not sure how native compiling would be affected by this
change; in theory, if someone was on a little endian system and wanted
to build a big endian kernel, they would probably need -mabi=elfv1
like GCC would but I don't have any real way to test this nor am I sure
that anyone actually natively compiles PowerPC kernels with clang. It's
probably not worrying about at this point so I'll just move forward with
a v2 rewording the commit message.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820175801.GA9420%40archlinux-threadripper.
