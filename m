Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXOL5XVAKGQEPVWCTZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5F7954EA
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 05:15:41 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id q18sf156087wmj.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 20:15:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566270941; cv=pass;
        d=google.com; s=arc-20160816;
        b=mryWtoUJtyiaJHJ1J5DQPxC4Qn7CRByRH4oXxmevZ7oEjX42M9Hq7HgZOq+v+PUjAv
         AR+Ob3tb5AZ2heQj/Pdix59qfxMXs88i14Tn5l1KkgDxarg/t1fdul7dXPjjhYphC42j
         V8eow8DYzMGT4aOQTECoAMuuBwOxRqchQf/FLFKgBrcS7owJ0cPPj8qA8o5CKyGCe6UG
         6mpC5tojpzvi/I9aZrlrvldyxUk5Hw0DQYDPMnZ3Ivf496iMg/dD//Ghceodglpr9AHL
         rCaWpp3If9D/s2JCM3MHafeORgxf1wlfBLUdtKkn+Fw9zpPw+qMwX1xMJQuRqPsHuVvD
         gYGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=SFhgplqXyahOubbSBNFz5I/FMKm7kZymYbYpkA2YwNs=;
        b=YODQVWvjY2NcCJlPMaSIkRyCRO4yeyE/clMBLzsNZJKTaB76UuEz8H/fAuVSg5YtfE
         EQeWu30Mm0vsCOK4hoUoTorHZ3/Q6l/SNadWvfkPtJOC73MciZXosDHYcvfXOwG4zjzU
         vdkeZ02kkjWfCYvCsgdqe+QYycHhetMo+G8k+yMf9fvy+J22XDnlgkVMUbW+09nZDiLg
         qpkwpW0J2R5XyuorTjMRZrNbIDo+iThoorPlag5/vPGH8c/ja++lEsO6QGGbnF41zGP2
         iR+/wYKbhZPSR6EBETVp1+4mo+QUEsi62HsffYl6h8k/HAhlJDlYK8WBmE3HidhUOBex
         JWKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U1jlEv+r;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SFhgplqXyahOubbSBNFz5I/FMKm7kZymYbYpkA2YwNs=;
        b=g98sY+pjkN0XashH29DkftTQ1CIqjTvrcfrntstkN0gCawZWgj4YpaHDle34VmV6u9
         KibiZLy6AOMD340HzVahNjWgFq+/6aquJ73iOiFs3wLePrCUtXoeGCfWZjbFqPl1y1KE
         2LX+zK3Y8AlVeB/2QBg2OXPzXdzZBOP1vPDaZA5wgLjoBpELWdYZ1TA3zlXwNAA8YO2s
         8bFj82ONlfnFbTvYvNaDiK3ip/1bWSD/IDC51WU91FI7XbQuR4tLwFbUNmcXtDU+lA/K
         Wfw/vXO9BGBwMLHQ0Tgczu0mNzVTZkMEAyXsOA1LAJDri7EHhvBoQrY0O0TLetJAo9tW
         cLXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SFhgplqXyahOubbSBNFz5I/FMKm7kZymYbYpkA2YwNs=;
        b=f0CB1VZL2Hkge+YG8A/0M0UJ8t2umhWHH2pfwIy04HBAnQc48TbYFFfSCp4VJaQNoQ
         OpTfdfGmx3KCMmZN5bKohhQ20xB/5mipEBjDORCBRhdLbsbXTDbiEo+QYGtPOP4BOSH6
         VkEd/nMvwcYFDlW59m4s41uiXIVJHPcGvNpIworPAHOSQAombAZEwBVPb78LbCe0SAQ6
         VI3opQpQbPDCSOXpGGYHa8oQF8OcFGbfXJK7ymz8V6kJWtCPfAbaEAfoPfI4PcXiqqIi
         3qGxB9D7TgVC0GX9CG7Ti2N76FlPQH6dDE5gizbOMg5E7/IEXaXDONrZNpFkz9rIDPSs
         88DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SFhgplqXyahOubbSBNFz5I/FMKm7kZymYbYpkA2YwNs=;
        b=qJveu8s/71gJVWD3oQs78y4vNDdL+BnmpOW4gdhhtEG1NqnNDOMdT/GjACJ3MoUUZH
         nmpT7eHtEMeyFP5WKiw99iteVdtLsW4+XMTmzVKuusTj79nkPKrKw36lStjxdxr5vJzz
         3xiYchU4DXm7j7zfPLaKmsY1G0Mo8c+6r9/nRg59ZGsH1PxIlCMIwsGKeIvuh0iuHzCs
         xo1VnJKOqV5yYbhevKFTMo6ECaR9CUtLR5WLyS0fSZWWjzfJIBCsPb4kySvJFQdYEm0r
         4vvvQc0saQpEm8jHb3WZoaoauzh5hA/e0U+hJZ4r83NiFHc0bMxkq6EQl4sWf9Z7qBDc
         xUDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWoUeIamYdPiFrU+LvbwcIKwyB9hdExrsBPNaowM5zhbgX4UALA
	YmtabPKKXXtwetUDp9q3pkc=
X-Google-Smtp-Source: APXvYqxANSHY36W+tLN84fDLA6pZ6qFmJaJ4f9ZU0cLoyLIk5GoHbtrg1iKuj2VsFToLuhr5Z7g44A==
X-Received: by 2002:adf:de02:: with SMTP id b2mr31009881wrm.204.1566270941637;
        Mon, 19 Aug 2019 20:15:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc01:: with SMTP id f1ls427217wmh.4.canary-gmail; Mon,
 19 Aug 2019 20:15:41 -0700 (PDT)
X-Received: by 2002:a7b:cb8e:: with SMTP id m14mr23932451wmi.10.1566270941236;
        Mon, 19 Aug 2019 20:15:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566270941; cv=none;
        d=google.com; s=arc-20160816;
        b=x78tiRt9h0gXuGH3l9WDw67ZTtilvmQ9CmApRMn8gbPYJfek2IiteDV8VJbKII9nHJ
         PmYAvzSfYtNkYtiuUOlIaHzgZHW+ooZGAg/Hwkm9RF3oCfRtfZOyjnLH7TXAFpTOwyNy
         kSsH/YkUakDPOOPN9yRrnryJyInHzdDZxT80e4jN14HE6C4z8aTc6hVc7IvxW8nclAEH
         zuCeup/ttW6ADUjpmCPYFxBGyB6cSSu/q97etCFvZxZHR7EfnxqBYeJ7PApvKrspOXb7
         tO2SSNrY6GZLu/ajSe+CdYGK37GpdSppvhuqx+GSLUfLVgSzyz0p9cepAXcyFTVsxeeh
         TGKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7pEz/mR885Taa0HQdSYyi+vy4Iw51smBsh3WTJyedOw=;
        b=UgGMivwuWFVBfwy7V6buvtTH2Ii5KYnFZdvWj2i0BEiyQOTwLYCmuGJBvSrpjEjfBr
         +V+yDe6wB9Pricfl82GVrEwArxzYybhtZ61tweBJAeP/IluAx5Kx7iheErBAZWmle6Vn
         aCzfqwJrDNqJXQly95OHTMLw9NGucN8/Q7Y+Q4lvZbxI1r9qcUzI6dtKShFAAds34xuV
         fCrK7KP4XrYRQNcny/YWNzOW9zdvmwD95R9sG3dsQB1HT33ryT/eWH3VJ3lpv57r0vRo
         bz6G/0X09+KIbkoLY4JVlrQ9YR+21eBo3bzDr0bBCXG117l+4htm/iHutQFAiJaE8pUZ
         igig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U1jlEv+r;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y4si838069wrp.0.2019.08.19.20.15.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 20:15:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id p74so1250611wme.4
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 20:15:41 -0700 (PDT)
X-Received: by 2002:a1c:2582:: with SMTP id l124mr24669519wml.153.1566270940665;
        Mon, 19 Aug 2019 20:15:40 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a141sm1292983wmd.0.2019.08.19.20.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 20:15:40 -0700 (PDT)
Date: Mon, 19 Aug 2019 20:15:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] powerpc: Don't add -mabi= flags when building with Clang
Message-ID: <20190820031538.GC30221@archlinux-threadripper>
References: <20190818191321.58185-1-natechancellor@gmail.com>
 <20190819091930.GZ31406@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190819091930.GZ31406@gate.crashing.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U1jlEv+r;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 19, 2019 at 04:19:31AM -0500, Segher Boessenkool wrote:
> On Sun, Aug 18, 2019 at 12:13:21PM -0700, Nathan Chancellor wrote:
> > When building pseries_defconfig, building vdso32 errors out:
> > 
> >   error: unknown target ABI 'elfv1'
> > 
> > Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
> > powerpc64le toolchain") added these flags to fix building GCC but
> > clang is multitargeted and does not need these flags. The ABI is
> > properly set based on the target triple, which is derived from
> > CROSS_COMPILE.
> 
> You mean that LLVM does not *allow* you to select a different ABI, or
> different ABI options, you always have to use the default.  (Everything
> else you say is true for GCC as well).

I need to improve the wording of the commit message as it is really that
clang does not allow a different ABI to be selected for 32-bit PowerPC,
as the setABI function is not overridden and it defaults to false.

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/include/clang/Basic/TargetInfo.h#L1073-L1078

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Basic/Targets/PPC.h#L327-L365

GCC appears to just silently ignores this flag (I think it is the
SUBSUBTARGET_OVERRIDE_OPTIONS macro in gcc/config/rs6000/linux64.h).

It can be changed for 64-bit PowerPC it seems but it doesn't need to be
with clang because everything is set properly internally (I'll find a
better way to clearly word that as I am sure I'm not quite getting that
subtlety right).

> (-mabi= does not set a "target ABI", fwiw, it is more subtle; please see
> the documentation.  Unless LLVM is incompatible in that respect as well?)

Are you referring to the error message? I suppose I could file an LLVM
bug report on that but that message applies to all of the '-mabi='
options, which may refer to a target ABI.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820031538.GC30221%40archlinux-threadripper.
