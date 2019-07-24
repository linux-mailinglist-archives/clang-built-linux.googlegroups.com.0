Return-Path: <clang-built-linux+bncBDAMN6NI5EERBBXJ4DUQKGQEN47OQDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDA972C61
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 12:35:51 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id b12sf29904783ede.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 03:35:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563964551; cv=pass;
        d=google.com; s=arc-20160816;
        b=uc3jHTGELIjATVSJ75ZaoiCV022/sKASjpKfhHJoi45ajxzuB9J8RP20upPGZ5TLVW
         bAYrjTp17HsJ6n2dGHbNv0i8Vh6RHz4omUrLmJqQC7fy4hU1fevPrqP0lAHzRJSmAaSm
         hSKtNQ+vguKA+MAWMPc4XO1kWxCLj9hA5F232Ci9BEvc5SRWApg8UKVOSUlpUcSMDzzq
         T3sooGGEIwZl+n6Ix5fs/VcgJUpSjwa8nAx2yEfkKqciCPb+nlSK87N/VMQeP5gHTeDT
         7iOW07teb+qTk9mgB9cFqNHmOpQcoZ6GEjC4NC3XzLDIJlFuJqF8l4A/ptnjOkYAJdOa
         ZERg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oHlZ02aU5purLIQVfB7gzDIggPl+FyjgaHk8P0EhSJc=;
        b=AkWJzPekU0uPUz08atyRlGFOu1XT6XGJCfkYC1O7qU4yRcqItPAHo7FNn46YfYxbts
         RAsz+O+pZXt0uMVBPRrbNxSp8Q9q5X8motNg1ibLmg6oFA0xUMjNoWyW8KT3VwcPlIqm
         l0TmS+9dbPl6Hcb5AahpcjYHQs4CaXG1oWsUMSFUji/ApMpuxHkS0D40eG9+Z2xIeffq
         q3jy46ce9yPtsSGgrzO2lmrEg2N5kT1DYBu96PIXuPwQCtfRTOeFLgCKVCPqMvrk9ypl
         xVPpl2TB6r8IEPimM36e5AEWfclwtnIL1lebPDr2lcsXU3pzPtoz8z9UMQvll2BAtU/D
         OsPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oHlZ02aU5purLIQVfB7gzDIggPl+FyjgaHk8P0EhSJc=;
        b=aPdebKIMvUg3lMAFf2Tvd1lYXkqLf6lsF9BZ2zRI7SR5tFSQjPnl9FULsxkRNE28RN
         56wxH7uWPVSF7DZYJx1PhWL6IsV+IwgCxLDHS3oNQEmwVlyVhRq5CmGHBXhNx5GboEeH
         YMeo2DcCJ+S3SfhT9/E9ratpv5toBfWScXF9bgjBDvQtMD/NW3zHJYRZxRwwlElkMLtr
         nVebpAQp+kLDOnOvFQ9PuKD1EQ5OeAHYzv+nqZ9GM7xoa+mFcOepLIhjMB1Pkg8fv30y
         qsvLOp6ymfTXNgneKHXMysVz8ZCUe2hWsQBN7Ohi0FUH67E3pS36mNyI/o/CPTjcw9TX
         smCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oHlZ02aU5purLIQVfB7gzDIggPl+FyjgaHk8P0EhSJc=;
        b=PxZ3o5NjfAjtkyG+pjldd5QuK6FGC2T6GC6MF4qDcKgGJuOSNn6lRnJ/+2Ir79+wOd
         PPFYN4DIZvL9uakFwLKAamjNUDsbi3gT2ZNUktUhU3K71t9U/cP7//bVNQ1CKdAuQ9oS
         l6pebO1Z/bwJuqqWzT/Fd79pbVoSnC/BF0K3cP7GPMXxWDUBmpjvyk5Isf0tpGCXpTU8
         IdMv8eUCO2Am8rQavSm35AAXQxyzXDS5juaTRprrk8ARxMt7iXSKAXxqgqtyMVJxOZ78
         PKQ7YorAla2ABirW/b9AXiWKIglBpNr3CgbrZphLoKF2ZE35kvihy7MmDjPD5xJFiTDj
         nf5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVx3vpItui2p5qUwrqXpfj5rQ5sKQ8ZhUaMY1YrjW5gwa+6g9e7
	Yv84jOuSClu0BP2nTuCY9cM=
X-Google-Smtp-Source: APXvYqyau0jO1S+Fmhy4SFmnkE6zkwwjSEUsND0wngrDa40JmfNGEJ+g4coXTQbYVQZtDLvm6rNi2A==
X-Received: by 2002:aa7:c559:: with SMTP id s25mr69516126edr.117.1563964550953;
        Wed, 24 Jul 2019 03:35:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:94ce:: with SMTP id t14ls10819149eda.7.gmail; Wed, 24
 Jul 2019 03:35:50 -0700 (PDT)
X-Received: by 2002:a50:ba19:: with SMTP id g25mr70490905edc.123.1563964550574;
        Wed, 24 Jul 2019 03:35:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563964550; cv=none;
        d=google.com; s=arc-20160816;
        b=La/ZCSL448ERVzeAZtWWaffeHtPDhbQdiILqn22Itb0tOTOIxsQUEqnxLfogwkrTqN
         WSMxaAcJZii75hBljLNnKaLat0uvMGXSrbl4C3k/pAEGQWQN2eal780W5Nihlh0R1i6Y
         KAxtoSJg0qBL6v0+POxrJq6CxRmJFxK2uzovyokZ6hwA88pH1Z++PoVCav5U4PuVQx8M
         7mxib51sLNeFYpTNecCA8Px97wVh+09hLPWAAg7uKP/U/mJrJan5xWRZhpnp8zVBm3R+
         Zzl6HTMLSmV3oFYjflpF0kMTWauRwvTPQkd/W15ahqGKk/gTsSXt2GTu1mJhoLkKiSmR
         sFUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JnTj3PXFMryDy8nni1CSnZHxz5qF7vkXeUEV82LNPZ4=;
        b=Duh4kQKS+uu1spkfSPeakkzs68hsj9WGOaFADrwYEBWObSrHq2cUR11dIHeeo2duaE
         0hubKJIDu12Z4sAtLVXCk1FNj+tN3WVZtwwd9sgShqzI2wcEnvREc+4PV19NF4hhXGT6
         fTYQQQlyR8c+0m//VaPxrFDVS23uLnoQB6tI2XHLPuXiCxfajUceFnMkilq9vHBi7TBI
         EnSgXWuE0B2HLr8oUS/RHfqKpnPr99fNqdXg1ma1wXRonrQCS6i7LYI0Fpnocj14T4T0
         ZQIQp3+TZy2aHLcqXy6tTm6QNdEjZaEEkmoXV4eS8QraSh7BXNfl2wUMI1SZcURGRaa/
         TAKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id b39si2527505edb.1.2019.07.24.03.35.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Jul 2019 03:35:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hqEcd-0004JD-FR; Wed, 24 Jul 2019 12:35:47 +0200
Date: Wed, 24 Jul 2019 12:35:46 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: mingo@redhat.com, bp@alien8.de, peterz@infradead.org, 
    clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
    yamada.masahiro@socionext.com, stable@vger.kernel.org, 
    Vaibhav Rustagi <vaibhavrustagi@google.com>, 
    "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org
Subject: Re: [PATCH v3 2/2] x86/purgatory: use CFLAGS_REMOVE rather than
 reset KBUILD_CFLAGS
In-Reply-To: <20190723212418.36379-2-ndesaulniers@google.com>
Message-ID: <alpine.DEB.2.21.1907241233240.1972@nanos.tec.linutronix.de>
References: <20190723212418.36379-1-ndesaulniers@google.com> <20190723212418.36379-2-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Tue, 23 Jul 2019, Nick Desaulniers wrote:
> +ifdef CONFIG_FUNCTION_TRACER
> +CFLAGS_REMOVE_sha256.o += $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_purgatory.o += $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_string.o += $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_kexec-purgatory.o += $(CC_FLAGS_FTRACE)

Nit. Can you please make that tabular?

CFLAGS_REMOVE_sha256.o		+= $(CC_FLAGS_FTRACE)
CFLAGS_REMOVE_purgatory.o	+= $(CC_FLAGS_FTRACE)
CFLAGS_REMOVE_string.o		+= $(CC_FLAGS_FTRACE)
CFLAGS_REMOVE_kexec-purgatory.o	+= $(CC_FLAGS_FTRACE)

The above confused my pattern recognition engine :)

Thanks,

	tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907241233240.1972%40nanos.tec.linutronix.de.
