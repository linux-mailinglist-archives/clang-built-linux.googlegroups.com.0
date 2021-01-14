Return-Path: <clang-built-linux+bncBDRZHGH43YJRBL44QKAAMGQEJ7C2NGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C961F2F698B
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:32:16 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id z20sf4331711pgh.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:32:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610649135; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vsmij5JAbP4cd0bg+TgbT/biiKm0pTQp3xOEA9/5zqu+dyxJfz9v2OVJQ/6lU3bOEH
         +f4inihvVYWvqkXyy91XwobG2Jz/FgcEPyRzsfeq88J8o7ErtSXdDWvopdpOnbfteiBe
         vRHZ/Nu/lablKVK50AXvd4shMgNQl32ttcfr4f/SpN8aiATxepNwYLIZyt2bLNmF/k2L
         RfjonWbwtc4FcPf5qEHQamGswd/SjvrV0dEy1T6zfCU2enZupBNAfDBOmvVe91zREQZn
         4KfOWq7lxcUXxMVADKTtAf2IMZuEw9AxwRMaBLI6Yx879Prao6CY9kQplJ/ysG7qy/t3
         vKKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=U3oOZFpiSnz8m4VJSQbJd/p68Jr75C7zX732fnWHxxA=;
        b=yqTrvbya+EEvahuzT9O6Ah4wAt+hYXc//4ZwDgysitpG0csBF/p9qD7j/ZDNZ+r1lu
         7gArjfEDhASKaGGRx+V+ff+pXndcVx6dXGXb2jUeE+Klyi7AmCenc6FF9XhT9Lrc+XjM
         uMNPFuXgO5nNZK6r4VoJ0WYLMHSMxGYmHVyYkhoXTST8f54EKsPSHOJYwNvZdlg1mlDC
         Dm1+F2qU9poTwDWJk5WyS3VNECq5F3AGbYAb4/ugQbNoXaxj6TckABdLQ0WHQaxqmOyL
         C7+Q9vE8lOEw/U992pUa3aotLvJ0YaDpI5BKN7A4Lo9XNJwcDxtSRkmb9LTilPoOZTze
         TuyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mUUX5puM;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U3oOZFpiSnz8m4VJSQbJd/p68Jr75C7zX732fnWHxxA=;
        b=LyfcYdYvXu+YYNkln9YNPHgRmx3w2AJiCxHwhT5VvIfgf0E3RSjWFfkDIW7K9SLUtN
         EdCAZ6xQeHSHOQjzkGUHLaip1G6yNR4rl94mJNEEQRxfdKV74F5Ho9A6KJxCz39kaVHM
         te4rCXsRQghEf0EHV3sxvdtkN5aUg1kw7xZo7MSOQ09081TOOlTO8F0fO6a9oXobyAlO
         DgljlPT4+5jVl5csNhqalEaDbmGUlmwQWCXd2b7dnQ2fWEeyM37uO0jvLIoXpBOtSsq+
         YQfO5FfHZjMAI5cNUIs939mHkL6dMCCzhh1MtRuPs+Yg4tKSxdakcCAFWNjjx8uBWLia
         Qeug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U3oOZFpiSnz8m4VJSQbJd/p68Jr75C7zX732fnWHxxA=;
        b=FjnN6NABx8Wy7L5DhCbWBQfb6DaSeKX62WhWUuY1xwKPQn/hQFZSAwvm6kQC+p4HR9
         PXIG8jLkVjHsnU0UYGvcv2eao8O2PDpGNud5gdBp4wqxLAw1NCMFBqM+NtEPwLYUtitL
         9Bj7CGiMw/WUXhaATlPs1eK8682oKaxAZs2jygVLOS4LjE6R43xsia0IAlQi1ZstPbGC
         FESLdj+OiA5V01B46Nr0WEJw1yf3asjtb5SXlW4aH3bulhUhmNUP49dtTWcBIZbXJmLL
         4mdjZSst3UssBfo8RCxWtbwZf6K6KNcXMlufKU5TNKOtaHNw989cy45Mkq+omg2/eKVN
         wD4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U3oOZFpiSnz8m4VJSQbJd/p68Jr75C7zX732fnWHxxA=;
        b=AgduZkocnkfpf/o33peHZMOvNSkirs81XKFstSoc+VPJUP2yg95XBCxfaolCBt1SJ3
         7lrbcKaFoYvcQiL/p0e2FOBvlZ4ojyRj6OF1kHlwTQK+nIf3gs0LBAqq3gKObq80ViPt
         ZoEx3qAIoSPQR3oS0rdvAkKs8zvKqXN7RbdLqmu3hFIh27ElKrrBTttVrvP44WLyBnIJ
         wUlBjIvFWOTAAF3390BFIjtku0Z9y3RmzYN0elWzTET1jUk/L444Qm3xP9tX/TXMLA8y
         xGuOOgb1lxrPY2+0PsWy+Xi42ZpSSplxY4U0pLi85eFxXbLJGVLzQntN1kc0a/h0YRBi
         Wwuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530I9icwM46QhMxHutyR+p4cgyKL6l3PvvLugXRGYaD8IobfKb5g
	5zYZ9Yx571+W6x0akaOfvoo=
X-Google-Smtp-Source: ABdhPJwkGyx1whFd8wF6UdqPtQYwdQTNzJamMAbeICQqHb4bpJHmJOtrZA3Fipf0sQrKVt433hrdmw==
X-Received: by 2002:a62:145:0:b029:19e:a395:bd3d with SMTP id 66-20020a6201450000b029019ea395bd3dmr8393737pfb.13.1610649135510;
        Thu, 14 Jan 2021 10:32:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5c85:: with SMTP id q127ls2441160pfb.11.gmail; Thu, 14
 Jan 2021 10:32:14 -0800 (PST)
X-Received: by 2002:aa7:98cb:0:b029:19d:e8b8:3d30 with SMTP id e11-20020aa798cb0000b029019de8b83d30mr8614351pfm.40.1610649134743;
        Thu, 14 Jan 2021 10:32:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610649134; cv=none;
        d=google.com; s=arc-20160816;
        b=PqNleALUZzrX+axpBoAJS+Gny/pI7QXmul5VzzrD9glvkjKSlyjsm5YWYqZyQrmDXV
         csM04akhvGOyoXpmLHvUr/WOIsYIck4A/oLY1yVFR1LbQKM5a/b/MCxuuVCBIK+87j5e
         vgMWLNYiDRq7B7bwQOxdEFkse3Kx541GdWy7uMggfex55zel+kNrNZ9cLOJJ7E8phT6Q
         2x9bLo32AT+3Bp01R1zvV2al1Iwnaq44YHAYx8i2mX3caXD8xHsO1+PIRU+FUaOBuSFm
         lJKJ4rhtIMuVMXWPmLfDFwyRDPGKSzlxKZmd7ISTanYLn0/Of736EUvrG0esZW6Uaw1Q
         dZfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jkDWkm7+rWVZYk8MvVS//EXKogbXqdcBArZyL8FNxdM=;
        b=tKCQwVL4tcnqQTvT5PyJmFY9Eo1TRt0prTwM8yB2iHDNv2vOayR0RgmUZyhHbQny1N
         Xj/10EHCwlZcoquo/6yeYtucJ1CO7+Laj217+HNnOWY+OoNrIKI1VarjF2dJi3VNr97M
         UzFOLt7PxCZu9AlMf+EDXMlm7oOFApRmSp3wHjN1Og8SWbiXkM8TeYekT4XGX+j1j4Zb
         TzHIActDA6IJkQDNawBj8fjU2iliv8CiRenD4ftaTIMR3M60hVbaDEL8TKBk9vQbIqRC
         d+Ymw19RHmKlne4uCybKAAQ2Qcwm3p6+paCLwYR9yx5YPq0rAqPTUha7WFd6i0AzBBX7
         QWgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mUUX5puM;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id m13si472751pjg.3.2021.01.14.10.32.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:32:14 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id y4so2699525ybn.3
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 10:32:14 -0800 (PST)
X-Received: by 2002:a25:50a:: with SMTP id 10mr12601986ybf.115.1610649134102;
 Thu, 14 Jan 2021 10:32:14 -0800 (PST)
MIME-Version: 1.0
References: <20210114180709.303370-1-masahiroy@kernel.org>
In-Reply-To: <20210114180709.303370-1-masahiroy@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 14 Jan 2021 19:32:03 +0100
Message-ID: <CANiq72mMnQBD6eVoNjfjiwz4TrQDz=DSh+gHen=grA3YqsYKmg@mail.gmail.com>
Subject: Re: [PATCH v3] kbuild: check the minimum compiler version in Kconfig
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Paul Gortmaker <paul.gortmaker@windriver.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mUUX5puM;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Jan 14, 2021 at 7:08 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I unified the similar two scripts, gcc-version.sh and clang-version.sh
> into the new cc-version.sh. The old scripts invoked the compiler multiple
> times (3 times for gcc-version.sh, 4 times for clang-version.sh). I
> refactored the code so the new one invokes the compiler just once, and
> also tried my best to use shell-builtin commands where possible.

Tested v3 with GCC, Clang and an old GCC too:

$ scripts/cc-version.sh gcc-4.6.4
***
*** Compiler is too old.
***   Your GCC version:    4.6.4
***   Minimum GCC version: 4.9.0
***

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Tested-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mMnQBD6eVoNjfjiwz4TrQDz%3DDSh%2BgHen%3DgrA3YqsYKmg%40mail.gmail.com.
