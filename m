Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUOK36AQMGQE7FIMXYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B9F325505
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 18:58:42 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id o9sf6923383yba.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 09:58:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614275921; cv=pass;
        d=google.com; s=arc-20160816;
        b=JpXQVoYbMTJ7gkhhDMQU67lKbxkV0xaAtbruGtNUXKFNLGFygzhRbQimt3Y4Ykkh2M
         VF7wE4S77G1Aqs1gbsqkIkobh5iA1fkCWLeHgPUo7Uug7IcWcBdLnAnbMWrFLAmE8Tv9
         UQKM1L30Jo+C4dabED8EMdeFxzhLyTRAgymamP43JSK96gdnpF1KrrSSk5n+4KYZTlvT
         +GqaQyC7qK/f20o7XHOieZwObGmeuBVs5STLqKZhXmiantLTri9S9AzUFl+lLqNv9t5k
         aYWYnpQjXpZ6pnkty98Eg/LEjCASxvSHZl9YmwzcyInD5iWP1aPhEidouIyfx14cMOAF
         3U2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Nu2GQt77LmQGXXrb9bfr+eiXpI3BWzBU7oRQv4yoc2M=;
        b=oqFx0X046W/BKAdk6CRGPqQrF61nLDhn3GH93BIS+3YbS8IqsOZ97RVR5Ae/aPtLFG
         RP3wxSod0QMyRUTT8jfIrhbhIwlpD6fyt3ShAArNYlw2JfYeS+EY0bNfx5bccUvZ/pUg
         +wb6D4xn93ZTZ0g1UuJwBUGGb4wLX2ZAO/ZgwpJoJPTh3VCstUZ7Nf8wfxg03hJYttWn
         /MyssWyDX5jRwGoDf7ktkL0EWA74bXDF4c9IOkdSMIdSnQJSENsHSDhVnzCX20ti+geZ
         FSWA5jL8awuyYXmgHUffJXyw2FPfNO5dbRStUQLNK0I9c2q/32nZeCI0nXElyc6wiKZS
         JOlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lW7mJtsi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nu2GQt77LmQGXXrb9bfr+eiXpI3BWzBU7oRQv4yoc2M=;
        b=Rfvyp33RDSP1/iKNhi6xvkLNddZAtjrWIdNI2XmrDOH1HY96V5uh7L/MHWQXMbVmfh
         //OeT9n9/YA4oQOptJPNlHM1ZKjXQ9pdzMd1PjAaJYF6sgt6uHIg2gWj6Wv6B1tuq2+f
         VRnk8fxky5BJU/HKbsYzDr2Jm4eQq0W64di3lMurK851EfJH30g1LbyFLAU6+LYoqm0A
         OuGLL1HlHUetOc20Sq/aeGPi0NN5AjYMAS7AgYsZ12V+Owe7lGooIH96tP0sKllAQKiX
         KIrf8uM1Z7hRYjXNB20TGoXTFjoEU793f99J0MNqmojRxqFVck0OuLXWQ+9oCQwONMRu
         w+Gg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nu2GQt77LmQGXXrb9bfr+eiXpI3BWzBU7oRQv4yoc2M=;
        b=d5JSw/fJSlxfG8tax4ouWEhkSTr8MlfnjfEnBsn7sr0eDQyIvmMzjeksXyMZt2k+Ek
         GW1vke1DUWTrhDp7axeo3Cre0oW8RszVScScTVCYq9vhsAMdkOXE/46A/gbuObag0m8c
         sTiyWAoyofB0bRd2nRu3a5KvF7Ile8Ikud+IVGUmnH8Y23y9yWPitZMR841w6rS1iVtt
         ieHRSqwSIRFiAnhUCm77y9rsVof3N8tTbEVB0MJBveU8mp4pwZn+sTWc3EOUBMgl00Ia
         c7QacMWs1NYA2y030t3G2lhC+kf2fGYKA26fZjBSxsPfLxYDMq3PKsmQiPvKp9kekEWc
         7QZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nu2GQt77LmQGXXrb9bfr+eiXpI3BWzBU7oRQv4yoc2M=;
        b=se2scXHCmf/89hxvWjOVHynCZ45fK3YBXPrXluIXjyjOPmholXoR42XNSb8oGkRUA3
         Y8ozBAs44D4e9xcWcXYJZyXGwpwUTkxv7ACwPFxZoN4cwqrkOhyu5cWsU8Rq0CdWM3+q
         Vm6Ouco2oT/IV+TL2spxeJQjfMMXlVDlxBow1PREX5pjmLHQVBUjrmmat8gToNJP1RpV
         Xt46RjGJs6GYc1JFVGSC5ePm16v3ar0F3zPxDr/eScd+jEhAGRws+RLAEDReHMm1jruz
         BtRwiWIeE1ZHU7JWbesm8qrALIbyWDrGSfeozSCoCCFQeLS9VvevNB6ZXY/4P2kisQlv
         Ta9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xuLAdgYxdZxNebw+mNMgDUrguw2wmgRE12PAdrjGJrg+jdMce
	VveNLMjXFV3lzTr4uBNpjCw=
X-Google-Smtp-Source: ABdhPJwGICkp5AyFInALA23LbNXPSTYCZDdg6wRF1U83lvrkgxbq3+jYoY8fC0izKTyVtHZxnB6ivw==
X-Received: by 2002:a25:86cb:: with SMTP id y11mr5689428ybm.384.1614275921561;
        Thu, 25 Feb 2021 09:58:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls1786503ybg.6.gmail; Thu, 25
 Feb 2021 09:58:41 -0800 (PST)
X-Received: by 2002:a25:3b92:: with SMTP id i140mr6062238yba.187.1614275921153;
        Thu, 25 Feb 2021 09:58:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614275921; cv=none;
        d=google.com; s=arc-20160816;
        b=spHbYW2WdzzkSHPkyHgKJihpSDlXfqVgPZP8v2T+YKmkh+6OoFkLwatX+bAxqYgGiY
         HdxE5o5MWJpcgPTwHR/Fx2FcXaHUJ/tqHsddbdr+ldyII9qTNAuXOqTpJ9bVOki3iHXH
         OXhrCvkxhYFERsNfA82syEo3Qgbw9s7AC1mXZUXSKqfBbA2LGjoFa+oaXdH0/bXTeSy0
         VgzXMDACitCRn1pU2XhGx03EHXxTSvEZkv6LhviYvzVLMmWO939Ony9VUBCAx3NUXt95
         6ZjEQYlIrbxd9WCw1JPKChi8f5n+DTSjUkouYo0mmoPQnNIqLpeCKR4+aRxYnFeWgqmZ
         RqNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t5Ts5wmgbhDOP/BWqX/elDH/bFcTPsZbfzal5Ub7nbs=;
        b=aOv+jndi2iubqQQNJtY1o7LdCdHwpzH1EiJuqGmVKALrbeD6bRffXsoy3Jbg4ucWx2
         RtlWDIKu6XUizoezc+cyx6q0d+OSMG8rchpWT8LEw83i8LJ5vdNT/1Sk7S1u6AqT0ql9
         Qw1G5VX8mkxM3tzNj/DLiM5alC8a+mwRK2euk5IKSuKDkrlkKdOXeNn8uh3K4Mmh+iNw
         I++Dr8xtf4Wv0v7ki4fQ2HHXdtnViM4ZcU1lcpT0NGzpGReTkQF68pjtKwCETZex49uY
         WmBxlOJqpy5t98nCs6TibkPzyVq+g1TlSzzEUi0NU29/p85/NFalI49i6ye5PfOU5nCA
         WSsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lW7mJtsi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id c10si457806ybf.1.2021.02.25.09.58.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 09:58:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id z18so5692587ile.9
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 09:58:41 -0800 (PST)
X-Received: by 2002:a92:444e:: with SMTP id a14mr3521926ilm.215.1614275920826;
 Thu, 25 Feb 2021 09:58:40 -0800 (PST)
MIME-Version: 1.0
References: <CA+icZUVOv7ZYWtNTKrVvPn_CZf-Q5c6EejkHKhA4ATt2AEHesw@mail.gmail.com>
In-Reply-To: <CA+icZUVOv7ZYWtNTKrVvPn_CZf-Q5c6EejkHKhA4ATt2AEHesw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 25 Feb 2021 18:58:29 +0100
Message-ID: <CA+icZUXG=ancjW+-c_kxfUPUCs+kuA7ono9dMqJnwuM-u5FQ4A@mail.gmail.com>
Subject: Re: Josh's objtool-crypto Git with Clang-LTO/Clang-CFI
To: Josh Poimboeuf <jpoimboe@redhat.com>, Sami Tolvanen <samitolvanen@google.com>
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lW7mJtsi;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133
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

On Thu, Feb 25, 2021 at 10:12 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Hi Josh, Hi Sami,
>
> yesterday, I tried Linux v5.11-10201-gc03c21ba6f4e with...
>
> #1: Clang-LTO (support for x86-64 now in Linux Git)
> #2: Clang-CFI (see [0])
>
> ...and objtool-crypto Git branch (see [1]).
...
> Dunno what clang-cfi introduced but I see:
>
> $ grep 'warning: objtool:'
> build-log_5.11.0-10201.2-amd64-clang13-cfi.txt | grep
> '.text.__cfi_check_fail: unexpected end of section' | wc -l
> 3891

These warnings happen after `./scripts/Makefile.modfinal` is run:

$ egrep -n 'scripts/Makefile.mod|warning: objtool:
.text.__cfi_check_fail: unexpected end of section'
build-log_5.11.0-10867.1-amd64-clang13-cfi.txt | head -5
43994:+ make -f ./scripts/Makefile.modpost MODPOST_VMLINUX=1
44141:make -f ./scripts/Makefile.modpost
48135:make -f ./scripts/Makefile.modfinal
52028:arch/x86/crypto/aegis128-aesni.lto.o: warning: objtool:
.text.__cfi_check_fail: unexpected end of section
52031:arch/x86/crypto/blake2s-x86_64.lto.o: warning: objtool:
.text.__cfi_check_fail: unexpected end of section

So, seems to be related when kernel-modules are enabled.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXG%3DancjW%2B-c_kxfUPUCs%2BkuA7ono9dMqJnwuM-u5FQ4A%40mail.gmail.com.
