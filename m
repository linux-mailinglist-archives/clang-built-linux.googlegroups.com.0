Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBTPZYCAAMGQEGJEUH5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A3B304345
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 17:01:18 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id z188sf1532019wme.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 08:01:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611676878; cv=pass;
        d=google.com; s=arc-20160816;
        b=e3rpXFpVBxBdHH/G8pvyQ3sVeduSho81+mvfB5HERc65jDM2djRW5Z8M4NOYEcLsh0
         PRNcATc76QMJ8Tu/WJ0YKo0u4p7M744WOrmYQDBGdMx4CiJ6znI9vfS93iC28hYGatx2
         WG+MLqGdk8LkZ3fKNR2hCfO4goiKLupfP7YaU9eOwQnkgS+TwrDwztpTk4yWQQ03ntyb
         x+Zy+tFwaZkwAvVDW/fP0aRQVw0dCxqegR+DzKRjmEG68ZZ2rgCBDauGkbjfoSeqmsvu
         V29+o9lhTyF+S708Ae1620GYWUWW35LeITrwKtmy+wuquVXnkk7Hgd7EPodqvm9gwu3h
         D3Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bKYCC/7nrayPlS1wlCEunmTbcFwzkshLRFTb6fv+CBM=;
        b=wpJK3GWVqIFedGcx2ow8cak/sQvRXchkWs0oBQ1SZD2TypBh8GXwo5RfsgYVsGHeG1
         hi2+xIZE0mWqdFtE2eIETLXDha0QdeqNp4Mfj0+pzXXWCqs7Mm+Dir4vqQM8Wlinlh+x
         GDehWVzre/VtVmkPF3EOyyWBXpfHy13kHqXWn+nGO8M4Z/zHbxRigF0XHhi9dobXg4RJ
         4cgg/5IpnZQ1iiUz8Gv8X4cJ3z9GZZr0vkl7kbiJ2IbFXXV4sHa7nA+EvTwDSINIIAgA
         Y6seteiGR7kSL5EHn2veYxlWQqBP/qzAnwCJSOKX8v1Vi+TGAmVHyljU6u+mtyeGoFRv
         VFyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bKYCC/7nrayPlS1wlCEunmTbcFwzkshLRFTb6fv+CBM=;
        b=n0v6tpz/Ec62Xp5Cs+wQKqZKN+R6PxxRzcL2VMl7Byf4XwjAysv6xDj4gGxG5d06vd
         7OCEnEo4GkGZ7YYA8jQgapFjeIRcaVit3Y4cpH5LMfs0kwqdtK+TwHvHV/pHbYkSTf9W
         BbUTtYN+69ekaR2vwY1OTD3W8QqYDv7BzpKTsifr+HuBhB5aBZQ89wxnl/dCusRDo5C8
         yZldACnKlPXWO08Rcsx8DgoWpfJAsC6kMQFXDB0buCzvYlF/WCdoKlgqjUYFt/CqVXlO
         gcNzEkNOKY3zv5fwT7Uml7UX1SLN9YKiOszWv1TAWXf1alObfFp/YYYksizmKx8wCTpK
         1CZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bKYCC/7nrayPlS1wlCEunmTbcFwzkshLRFTb6fv+CBM=;
        b=pKwAClBIMQL80c3fp6Ys3JT2xkdDQcwCgkjIO4LW3Qhz+Ih63bm/swgAWgmqwrEmJQ
         s0gmwJdAYisk93v9/FlV4H1Gz92IAVzcCJafh1J2ojJXrsauSUpKsD1dFv2aP50QMJl2
         4BY7Scfuo6eHvUYM89lnKhc6PvQHvQK6D8GMpZAH5qzBucYT8IX6hTXjHSnG4koaIROo
         4xUwZFk2HVaMId7JAg2WIlyKgwCsS06pfaD8ukvBBYWwVQgsDH6lHYTBaYO2IUxifbzp
         xd93lU7FA8OQD9GAGUFW76538IliuJaj0kRgHwrFHPn7NGmSkUJCClivW/1dcSgVpotJ
         ab7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fGgbiGN6QBUYJ3HWBx3uHixJhT/rpdVBwJRCpe6Y07VmMWE6d
	MnpUkXM4NJVkEPUtQaWRWU0=
X-Google-Smtp-Source: ABdhPJy3GXNdrJLDZP1vdoCCne+OrcUIqSD7/UWUjBnZymuC7j01tMcIxbM3Yq7lRTz28OOHnnCuqg==
X-Received: by 2002:a5d:6191:: with SMTP id j17mr6753020wru.281.1611676877517;
        Tue, 26 Jan 2021 08:01:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd41:: with SMTP id u1ls1735655wrm.3.gmail; Tue, 26 Jan
 2021 08:01:16 -0800 (PST)
X-Received: by 2002:a5d:4c4f:: with SMTP id n15mr6961327wrt.124.1611676876642;
        Tue, 26 Jan 2021 08:01:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611676876; cv=none;
        d=google.com; s=arc-20160816;
        b=ivKVD0+UyanHWf/k/1DHzkhXwQ+LnllJc+i31toFLZcIWFhTx+1SBBv796dSRx4o8g
         4XVoDE02lorXCS+VB2AQPP+Vkx+xLNLmm0/kQkIo6cbHbpbzDXeVxeuW18MjGTq9THhy
         TiXIUr2xePL5mkjA26F/LrDish5z5fPOWwTMfqzAH5KNPmSQfNCoP4TVjNy6PZAgHZbD
         KdaqB17BHukY/uK663xXANj5n/ld4CUBvuH5rAKRL8EbIjtRdUfCV4bIUkbJg1vdHPT5
         6rddc/oqKLPPEZZcTNGCeCmvJCnVkTSvSnRT7tQ9zKUw6fNfCf7uDaE9Pzn3JF+FMYF4
         XJMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=5XR5WywP59GBh2VX0M3AkNnntemRvKmO8Rxou8F+Lo0=;
        b=jWK8FYcAtXkAgHy+wdVvVzyma5ECASnnLMdeLZXsezHOajZXKqJfXk4FIANRB1RazD
         xR94MkWk5moIPRPwV6uv580mWeRiwuUZNnNpD5n0VTULVbENE/Jt4QiRXJlcu6TQthiz
         8itAvSkNXk9vAoJUb3iifYRkbR+gZbNjzqUNuOrWWLSzvfovxgp7oviGIUVUDX6heJNE
         j3qczEe2cFR13+T8pKArTdaA3s+Uo/tWB/bF8P+ljSAOV6L6bR7nusbAjYujeKcaO8m8
         1BS4w8tnKmYDnUuaPoZeFYWzjadi3KgC8tAk5dN/EROb8AvNnkvTEpQwcFzA38bKn3Kg
         j6bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id j133si145318wma.2.2021.01.26.08.01.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jan 2021 08:01:16 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1l4QmC-0007wD-Pt; Tue, 26 Jan 2021 17:01:08 +0100
Received: from [85.7.101.30] (helo=pc-9.home)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1l4QmC-000VGR-Et; Tue, 26 Jan 2021 17:01:08 +0100
Subject: Re: [PATCH bpf-next] samples/bpf: Add include dir for MIPS Loongson64
 to fix build errors
To: Tiezhu Yang <yangtiezhu@loongson.cn>, Alexei Starovoitov
 <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, Xuefeng Li <lixuefeng@loongson.cn>
References: <1611669925-25315-1-git-send-email-yangtiezhu@loongson.cn>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <67891f2f-a374-54fb-e6e5-44145190934f@iogearbox.net>
Date: Tue, 26 Jan 2021 17:01:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1611669925-25315-1-git-send-email-yangtiezhu@loongson.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.4/26061/Tue Jan 26 13:29:51 2021)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 1/26/21 3:05 PM, Tiezhu Yang wrote:
> There exists many build errors when make M=samples/bpf on the Loongson
> platform, this issue is MIPS related, x86 compiles just fine.
> 
> Here are some errors:
[...]
> 
> So we can do the similar things in samples/bpf/Makefile, just add
> platform specific and generic include dir for MIPS Loongson64 to
> fix the build errors.

Your patch from [0] said ...

   There exists many build warnings when make M=samples/bpf on the Loongson
   platform, this issue is MIPS related, x86 compiles just fine.

   Here are some warnings:
   [...]

   With #ifndef __SANE_USERSPACE_TYPES__  in tools/include/linux/types.h,
   the above error has gone and this ifndef change does not hurt other
   compilations.

... which ave the impression that all the issues were fixed. What else
is needed aside from this patch here? More samples/bpf fixes coming? If
yes, please all submit them as a series instead of individual ones.

  [0] https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/commit/?id=190d1c921ad0862da14807e1670f54020f48e889

> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> ---
>   samples/bpf/Makefile | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 362f314..45ceca4 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -185,6 +185,10 @@ endif
>   
>   ifeq ($(ARCH), mips)
>   TPROGS_CFLAGS += -D__SANE_USERSPACE_TYPES__
> +ifdef CONFIG_MACH_LOONGSON64
> +BPF_EXTRA_CFLAGS += -I$(srctree)/arch/mips/include/asm/mach-loongson64
> +BPF_EXTRA_CFLAGS += -I$(srctree)/arch/mips/include/asm/mach-generic
> +endif
>   endif
>   
>   TPROGS_CFLAGS += -Wall -O2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/67891f2f-a374-54fb-e6e5-44145190934f%40iogearbox.net.
