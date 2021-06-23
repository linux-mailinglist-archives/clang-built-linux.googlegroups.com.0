Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEOEZWDAMGQECI6ZKSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F06553B1EB9
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 18:32:18 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id l15-20020a5e820f0000b02904bd1794d00esf2327314iom.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 09:32:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624465938; cv=pass;
        d=google.com; s=arc-20160816;
        b=EcxHcSEXHGI/xIjZcVwDBu1EUqgGV6R1k3KojSkjbtgBJ7m7m7X4JjWY8XPRJFb09I
         oPsTC1f7m99ea4Xrb5t6eKIZstHEdcayhOzZhXYMnDjupuqQyJWtTuAMQMeOKz3wv5Cv
         3NUEAGCwafKqE6T2ZhCdNc7DBDTMB6mtLGkfuA8lVOfy7zDZ31BiPLyqyi0GV8+icO4u
         5VDZpQ/dxj7jrvM06ErOZin2dzi6bLe+uwTtFqg4ts6WL4wskFtpfT7NKkDJ23LowjdQ
         4dnmXu92MPsIOi/PZcVqV0q2Uu1TeHMlZI/AQGyUBIUwhQs8H3v4YsJJwXJl7Ur2juAw
         5TNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ld6BdKLEPs8W5kv0wImhqBah+qxuyyK6wObMGu9V2SU=;
        b=X9xuR//AyMj1znRzyEwaPHthlXp0i4hF+FWnPKVRTyV7RQeUpgx2mAm8dJZOVKRapM
         ZQ00/lgvRlTb2Wqpq0nUWTtURimSvvU65gqGv3RGjVXYx1V2EFqffS5dJ0NjN2k95ueo
         C8PPcJntuBsf5RgXabZYLRm83mtVgTNyApxWQvKWz/9FkLNUdhuNuK1zB/Mx+410RPMM
         uOekNcT+ss9zh5TSoJ9BAwY9kYpquMsN3NGMUaGsrIe6pUm+iNAqwGNLG7/d7qxn4QeA
         kgR6TBDftVF+AYmwmjVhd1H0jdBK2i3Pj/Ae7LN2SF5aLeasb7JEGdyWS/s/1p2ZByEY
         bOSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="P+rFTJW/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ld6BdKLEPs8W5kv0wImhqBah+qxuyyK6wObMGu9V2SU=;
        b=owJsPumiDZD1kW45+EN9wxrZqs7716shBWAZjJahkDzKidKrmuDYuYHZknUEJjwRbx
         VQhYxoKZHG4qTRI9kdAVf5hDpK3D/VTpqho5IJgT6F+QAzOEGXlkZcp/HwRcVwmhGG99
         ucpmPfQXvd7iJsAOjWwDut2qjHi26Nyi8m2bNL2x/0nR+ptFPKLESV+WPkLXA2Kz8ZEo
         1nc3FCUI6887gGGVAuehZZl3QxSgtodgwdSKw6ypTr6fhnsiFJTYRkDAks2GghL2AdnH
         rFmlTWb/U5qXDCljWhdEVLsCHWGOfG/InD274Uo0VsiU86m0I6rLj/Y6GAW7BJdNPApQ
         F3+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ld6BdKLEPs8W5kv0wImhqBah+qxuyyK6wObMGu9V2SU=;
        b=Fz7LEkycqUjkD9WjxCHRboRcnCmR4q0/2ZsMnGpQARcAQh0EZyXKRapt0JvAvXrEy7
         m7miEsKB7M3ZlPaYZLOx1uC3xSL5n7NsoAR1kfVUTrK/aiNDMewKLQTIaqNO+bM3QrC/
         lTXGa8Z+8w6caP4hIqWVbvYrGchWUAY9Q4pKUFDfm2nk2n6Es4gzFqzBkbn6edwyYsFI
         PI9YjqeXOh3SePX61E2FImCjH6/l/T57sE8H52F/k+6oivJzJSR7O1Qyx+93ILjIuB38
         Edrv0824Am/q/kmD/UxaOCS9xyN1FUiQgC9Mn3PaZQFprbPyo+A9WPQAOTkGLroyRBaA
         rPww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qJuoUqlTvZTDLv91nLd6jnppX5GIw5rHl4kto4ag9wGr05Ws1
	5PRK6NxNpTzC0CUwhzoOTJA=
X-Google-Smtp-Source: ABdhPJyKSqI0wKvpsHXHHKD/XJKCvWWgnhWI8o9lVhJcwoUVZVg0V8vAVzAHsAuSDM8Fe/luWSARGA==
X-Received: by 2002:a5e:8342:: with SMTP id y2mr323461iom.168.1624465937984;
        Wed, 23 Jun 2021 09:32:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:ecb:: with SMTP id i11ls747889ilk.0.gmail; Wed, 23
 Jun 2021 09:32:17 -0700 (PDT)
X-Received: by 2002:a92:3302:: with SMTP id a2mr218645ilf.62.1624465937658;
        Wed, 23 Jun 2021 09:32:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624465937; cv=none;
        d=google.com; s=arc-20160816;
        b=qZWNagJHnda25yf/IsJgX3CJs8RL1l3AEOwzAbJy8rj/1ty7TUhtA/qVOsnr7uF3jR
         SDdrLqeUf2UlsJznn4sX3gUxKT9GU3ZZJM7EGwMaxzbXjj98VmKOUliiDsiBs30cEKZe
         8R3wS6KT/FeouJmL0FJcbKjrmaGk0k7TeQ+i0dyfuBNT5tkVnimobnjbu3wuXOv5oNE8
         ML7mN72ye5rcpR3S2VqH8WNrs3cwA3n0cWOOpzAYl0+Zb2V49eiWMubHRRBTIYctofj9
         AUuqChqE/DIx/6+rJkNudgYCHZURzfnJiQ/HKdZ0hvv4XYYmQ1vskAj7D1UY0PDz9PoT
         WpcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YLifFSZi/+bGptXglQ0Y5rGhT/pS0AbjzsR58j9fOLM=;
        b=upCzGPdlLA8Fd/tgBCe5DIy04HTLPo0L75/lSrFGqMzfcySp+QtKudr+n07YARL3tx
         H0gAgMl2pYeliuw9W0ypito5uPz2PtUPsv49GFn17fbY8PadXn00qpWty6+39XzQoIfs
         Jwr2dPVr2hWy2LUMRulvGDmZFjAQ1tWu/JLS3NBle1IDCaRzD5egadsiQ6geiAnZUlZT
         NLfeUS9GFcp+OEdNuRfMBMVFvCLXC2KUfxAZzBcNxUtD4pKNUopfyeKK1SUR++UyHpEa
         1pixXYahKXvtzxbdiJUuhcyRw6xZvGRtCj+bbMNG+GSo8PRdibop5LCr0uzTCgUBP2qJ
         +2iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="P+rFTJW/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id y16si71454iod.1.2021.06.23.09.32.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jun 2021 09:32:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id d12so2204411pgd.9
        for <clang-built-linux@googlegroups.com>; Wed, 23 Jun 2021 09:32:17 -0700 (PDT)
X-Received: by 2002:a05:6a00:1481:b029:304:87ea:8dcc with SMTP id v1-20020a056a001481b029030487ea8dccmr593663pfu.46.1624465937110;
        Wed, 23 Jun 2021 09:32:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x5sm370399pfu.116.2021.06.23.09.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 09:32:16 -0700 (PDT)
Date: Wed, 23 Jun 2021 09:32:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] ACPI: bgrt: Fix CFI violation
Message-ID: <202106230932.198A54C1B8@keescook>
References: <20210623013802.1904951-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210623013802.1904951-1-nathan@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="P+rFTJW/";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b
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

On Tue, Jun 22, 2021 at 06:38:01PM -0700, Nathan Chancellor wrote:
> clang's Control Flow Integrity requires that every indirect call has a
> valid target, which is based on the type of the function pointer. The
> *_show() functions in this file are written as if they will be called
> from dev_attr_show(); however, they will be called from
> sysfs_kf_seq_show() because the files were created by
> sysfs_create_group() and the sysfs ops are based on kobj_sysfs_ops
> because of kobject_add_and_create(). Because the *_show() functions do
> not match the type of the show() member in struct kobj_attribute, there
> is a CFI violation.
> 
> $ cat /sys/firmware/acpi/bgrt/{status,type,version,{x,y}offset}}
> 1
> 0
> 1
> 522
> 307
> 
> $ dmesg | grep "CFI failure"
> [  267.761825] CFI failure (target: type_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
> [  267.762246] CFI failure (target: xoffset_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
> [  267.762584] CFI failure (target: status_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
> [  267.762973] CFI failure (target: yoffset_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
> [  267.763330] CFI failure (target: version_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
> 
> Convert these functions to the type of the show() member in struct
> kobj_attribute so that there is no more CFI violation. Because these
> functions are all so similar, combine them into a macro.
> 
> Fixes: d1ff4b1cdbab ("ACPI: Add support for exposing BGRT data")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1406
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for solving this!

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106230932.198A54C1B8%40keescook.
