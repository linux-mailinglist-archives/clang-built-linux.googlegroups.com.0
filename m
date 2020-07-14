Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMVCXD4AKGQECCTH7IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC8D21FE37
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:10:27 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id 8sf3304084pjk.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:10:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594757426; cv=pass;
        d=google.com; s=arc-20160816;
        b=mB8EZSnkWZ/acPXNEpaOI5uk6/OMOCRDfyhbAIS4dkp7B7Yo0Gps5jcTWTYUq6u4Dd
         uzR3gRaQCDJfp2QxNNj2FOXjkE7Jvab17HNGBGLNoY3GeRdv8VVO5IqtHeCbFu4XeFaV
         H8OkusLXdLtNrXf0smxv/3HSwgfnAu7z2c77L5WSr9IBTRxBcDClq3U3G1qv6+qLqU+I
         pb5m1yczTDO87AHQrNy6Vps/PE2aBTlmB1JGk+H5lkGu/VWC/ZWuJrlfVK6AqoIY1mEi
         yYelpDSGErdaV0tX8hSAp3DzWAe3brst1mhG4YLBKh+BbBllTM+bhGOrRwyN7VJ2qPD7
         +3CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RauaHqIgE0mvNPGwOEbBGJfS8PYzYkakgC2QLOx1TFU=;
        b=QQw4z4NAKXzSRsInaudAN2hoAyJqo/Ho29A81UIR4xyX5mQqwkECbp402TgDgqOg5x
         3JJqyhlzgv00ikSqmxhu1TjwumxnIxGrVxG9wqTXH1jugWIm+F5wzn3PIfbcd7skezYw
         UDvFfzKhMYGIrRWF1yyPp3zGpld7M8NUUSHLVVJ0Gop0OSAGG2nWukmdPX2S73WQWKaR
         LvmmEo/5I/n4Q+saXz9xgSCfQ0iah8lo7CjVNuKdT/Wg3GFWNrKb0M8fMQv8EZbkBtsL
         6xIYJsVlGCrrmFXfrc/BoqY6X9cBBLlIKVJkrLYC0o6bhNiHjJWj5OW2Rl/blJ7iD6do
         FAGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NwWt2Olm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RauaHqIgE0mvNPGwOEbBGJfS8PYzYkakgC2QLOx1TFU=;
        b=NkRr+g+McOjhkaF7dkcl2bpqxLTnqwYApOA+3n0tTjXKDrDR2D/FHk6/TzHtsWmUKA
         I9QlsCnsqY1g50lQdQCcqBS/sb9sjlwiuBilHGgdAZC+Kui5FMLAjrc2PukCwLZ8vPAI
         4BI8OaUqk0MxS0VA32tf7nM+ZyYHziIZHEFSId1UppXYdlhwwezkCsFXuXJiyIGB0B1J
         med6XGJLZsYWyM5s9uaGmP8IkNMQOA6WW6PZhnSZDc+VQqCMphE3TxtFxvA+2T9hAN7P
         dSZwmzOkAhafC/7fDtT5jo1w0oL3rxq0juS1At9YrUbnl0uRvUGaHQP7RqnGnaZNHEHB
         sQwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RauaHqIgE0mvNPGwOEbBGJfS8PYzYkakgC2QLOx1TFU=;
        b=Swc8d6J1MjSziIlCT3mVP45O/wexn0lFDp1eivlaMW/KghC8jb9Xnm295rPKPOFQO+
         TNaL3hN2XOctpNgsZaa0mBkCzOdIKYgOg+XgebJjk54mJZRwZd8SD+4nPCpRVUBG9Kht
         gSO6xDFeVG1tjtYANNsxUegrvTGAEi+UJsbBEifFb41k/w/C1AsUfGw5ethGfkZDJzVQ
         +gaplMaXTwd5gdnN5pIr6yfBDeDsmms+FTXRwDtUd4whn3TryX9JOu5WhDKp64H2yErg
         H8dk61DNaVJRKwrrXCwPuKTO7j+pfm+XKu3Kkf4GmwyejCEfkJGHGPkZIqXzgMpyGgqz
         dT6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RauaHqIgE0mvNPGwOEbBGJfS8PYzYkakgC2QLOx1TFU=;
        b=p3+aUmeOQKJO7dAj3jxlnoYihNMMY/tf4qqG7HEImQqY0bQw2TGvKTx+1FgrG9YW12
         1WcEf/On2OCUD2r0qs9fuJWr1xQsQeQ38sh3smnfh8iTQ51aE7v4zZbR6DkZHr7+avxF
         ud3y8PGItNNHPLAYSKgEVSRBoD7oi9FkPxMTe8YDb/EvUTCjOnWyMm8dA1YltWnX/PcS
         fH3f/0mCA8pUglPHdEFF3R+qt0qXZpl+MCxQKO12iYxSwuRi3MYxPgl22pmETYVV0s3A
         n3hX4JT58nASBT40JLQV6ggTxjPXTQ2Y5QxUdw1A6mwq48KPwkoV7L6AmiFK1UZmva2N
         n/zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XtCTd7HUDKryP/2Z9iMTWDzWukU/+zSg8VNVZRR/+8gWrj6OD
	nzwFUQcrjFzNYc/Y+HxN7ck=
X-Google-Smtp-Source: ABdhPJyIVojXzO4I0W+P7JfoiSYUiR8Bhh9/2lCCj1WLXybztys1qDK/c/Pa+UGuBTNnhPaPNeXsZQ==
X-Received: by 2002:a63:6e4c:: with SMTP id j73mr4585713pgc.182.1594757426538;
        Tue, 14 Jul 2020 13:10:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:864e:: with SMTP id a14ls6876630pfo.7.gmail; Tue, 14 Jul
 2020 13:10:26 -0700 (PDT)
X-Received: by 2002:a05:6a00:2bc:: with SMTP id q28mr5751704pfs.250.1594757426026;
        Tue, 14 Jul 2020 13:10:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594757426; cv=none;
        d=google.com; s=arc-20160816;
        b=BQYFc06qCaEBP5rx7y/TdIEPupDBh1eUjlo4eefX/kl3vckti1IvNRSyqV8JmDBIVk
         B2hy6hML25R98N8lqAslOAKuZmdV4eOOrxCNHW+nmOoKxmk9PiC8x+vueBbT36p/HGP7
         PtDynMBsRIUANkQSeIcVe/lBJqb3kCucPf1JaSmTw0V5yW6dKvYGkJvjWLUvvDZONTeT
         5JCjmGuXhvIq5OgxSlx7BL4JqvAScEGOcaDgDfb3HF5ZznnlbI/PJs+v8/R9/ZYBn7pS
         TAvHwr3r8PiSmFfkGyjm1J+0w60+bkPKELZx0VEawamFNRf/3EeLBChi2cqm0Xkp4JhG
         ZIWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/s7mXKyDFtdZcyZoCObU9RfK9Dh7wLJ8B6HW6u/J2Dc=;
        b=QsWfbvDQD6uanOMkXFKWmhGD8sV0CxeEFOZ2lDpGf7eJwJ82pnNBSOTNrqYFGs5ptP
         DqZsE6XPw1lQ1kzTulvCcF7dWLmRlHh4WLUt1Yfw0eJrdVlSlJhsd0Ukbo8BpOK22SpD
         t+rKpo8r7Ju9oD46ukNnv5CCesxdmrtzxiXNP+EPcjs7uGFJ/5wqnxgiGQeonzJSNdK1
         SExA42QzHjCNgRvKSZUeFfGzUfcd6rx2SpRIz+MsQFHHT7j/kMjfy2FsrvL1nc1bLWNO
         ZCn72cVQZQe/+UnfjVoO+WhCxmtPyhIOHL4bMj1ebwEgE9mHEnoKtS3kLsQyQ0jn8TRb
         TCNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NwWt2Olm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id e22si138146pjr.0.2020.07.14.13.10.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:10:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id o3so15286156ilo.12
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:10:25 -0700 (PDT)
X-Received: by 2002:a92:290a:: with SMTP id l10mr6797006ilg.204.1594757425513;
 Tue, 14 Jul 2020 13:10:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan> <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <20200714200728.GA894572@rani.riverdale.lan>
In-Reply-To: <20200714200728.GA894572@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 22:10:14 +0200
Message-ID: <CA+icZUV9_ox9q+yANQQ-6X41fRb5K7mMn3NSh0_E9R1hO4oC4g@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NwWt2Olm;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 14, 2020 at 10:07 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Jul 14, 2020 at 09:53:19PM +0200, Sedat Dilek wrote:
> >
> > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> >
> > Attached are my linux-config and dmesg-output.
> >
> > - Sedat -
>
> Which tree are you building against? I notice you have KERNEL_ZSTD
> enabled, which hasn't been merged yet.
>
> Are you using Nick's series [v7]?
>
> Also from the naming -- are you using LLVM_IAS=1 with some patches to
> make it work?
>
> [v7] https://lore.kernel.org/lkml/20200708185024.2767937-1-nickrterrell@gmail.com/

Sorry for not telling you the full story.
Yes, I have some additional patches like Nick T. "zstd-v7" which
should IMHO not touch this area.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV9_ox9q%2ByANQQ-6X41fRb5K7mMn3NSh0_E9R1hO4oC4g%40mail.gmail.com.
