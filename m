Return-Path: <clang-built-linux+bncBC2NBVXJ7ILRB6VO3DVQKGQEXM3CEOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB0DAD56C
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 11:12:28 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id n9sf8225318pgq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 02:12:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568020346; cv=pass;
        d=google.com; s=arc-20160816;
        b=AfAhOhUkI8fDv4y63UeFpXpw+SfybHueHgfZYyYBFPmoM3ApPSpqSsdGoWbCWuOpPn
         +/ErM+GhFjjjE7Y+l+XzTDU09o0nO4Npm/8riKA4Bm56tcP0MghtEQyKap8iDd/9ue3P
         TZwiH2raUo+G0x4n1Tu/Ku9N1W65RVvc1b0aYRPv2HwRAk+aDmpnNLN/XL3zZWl6AQvO
         wNKXMlFcs6UXG++pX2cerjBQBBfJRHwR1HBLDjnBjaiKbAM8V1bE1YXkIKsso6cyMAqS
         MP/kLzMfqqR/+JmYrLHbdZxjEu1ELToKXUav87DHTR+nfR6fGt/50dfwaeCW6VwfPv5Z
         hDQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V19XaUqcTru7WnvBXhab90SRo9xrfAi/iQsIfgOh/9A=;
        b=g8QdkWgfUsy5AMH1yUd0AVC3K40uSs888Bi9kV4pJLn0J0Z1vHJuGlWfx3X3uSJxlz
         PB2eKEfr/YgspxJSuOCItUiurTL+FY8DYLaF7Gt1qIBKLrQj36qBZugQ0XmmgwMYABGa
         s8EQhIJ4UnTBp2Y5GBxpeZF0JBH4bVdmyyKDuLLHle5pRE6khraigr3kXpHhyi4tS3eG
         vFUVxL0ghwah2uynsIHMUlmTRmS0LJVD06Kr3zAi/9lzCJs26cHt+eRrSz3yy0AH+0RJ
         bCCPWh0pfFmY6+vwnM4y7w9ACZXIQWOwK2WR4sdhLl+vlsL2NslHfOMsR+5OIwkW6ngH
         l48A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gpQqMyEJ;
       spf=pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=hwennborg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V19XaUqcTru7WnvBXhab90SRo9xrfAi/iQsIfgOh/9A=;
        b=dhq20xnWLNaGxl5nj1wJMNySKYx4ZX2oYL8xVsykElQxd91GQMgHV3qqEIpkk9czdM
         FCQIoPSlKMeMZaAi65+x8FjIKC6Ns1AmpCHxKGOwTSaQrPHaHy4P+UK8Y6hLUiC7Yymr
         n6l+Z6ImmbnQ82biTE2k/CbHo7R06WSo2TahjItC0CwW4dAi1aMzugk6BL8AV1MKDSzP
         WlQ1P548zGYOXzG1uuxg10EXt3STTn2tlpkNOo78JSXVuolWGG/6xCFzWFZAQWxGbcrw
         8zxCbUzjeBYWbJi4EWXyKzc1/fEJiMX0qHwOANsXZpTGWiIsiKaq8jhjc9+NiJPseGt3
         bIrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V19XaUqcTru7WnvBXhab90SRo9xrfAi/iQsIfgOh/9A=;
        b=ZAeQLPwIlfZaklmLVhMJMo8rig06eRIOVSvsb+nspAH0/Y0wrD4IGP8dLIZX4UIbxg
         HQsbYNh7iGwMbrWtoKDpEPamGdkofqvFkCg/KAiUXBZqU/cAJFfTU3gwCDgfZXckiXwe
         3B5kxkxYLWtmDQdNqtIOSeESUG7XDRsgJ/8ILE46On45T6dyVReZN6Le+YmmDr+BBnC5
         Gf+e62sqG1L4H2OJzIlOAsHp1ZiMeKD8gCjy2J5ioHh61OA04p8Ma9ne3p/ByVbHqY21
         sw/Rc1X8kjqg4lg5gP5mqyoiAPrIY8bREcuyjtSg2OEAHP/CJe92lPJtYnmiZUsJP9Gv
         JNAg==
X-Gm-Message-State: APjAAAXLEZWoiz6OdblNhvtocFdh9yGm2DPtXm/4Cbq7coxzHzaP3nPM
	G+ivyGVF4A9hOO4rcPv7F+U=
X-Google-Smtp-Source: APXvYqwWfsf3y/ieBxMPavFE5mmVBwuq3lvAOdJy/QQ+xC+9ea+6KrhUg8BpyE9eHoOYAAX9BmO0XA==
X-Received: by 2002:a17:90a:1d0:: with SMTP id 16mr23730553pjd.98.1568020346690;
        Mon, 09 Sep 2019 02:12:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2766:: with SMTP id o93ls3380701pje.4.gmail; Mon, 09
 Sep 2019 02:12:26 -0700 (PDT)
X-Received: by 2002:a17:90a:c203:: with SMTP id e3mr1066423pjt.126.1568020346444;
        Mon, 09 Sep 2019 02:12:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568020346; cv=none;
        d=google.com; s=arc-20160816;
        b=cNrtY9NT8e8zSzbGs13BCbd5VvRLXYtUmJMyin0bVVZz78JnkJ7i+MsEPlnbluEX31
         FDjWgwtWdnezgWy1RPAqO/Xv2WbuJY4xXNiiF3uLRCWn3lZpOnaRzujTvh0MAeXtpae/
         ZEOpXVXCcKILKXMWxUWqdxRUKngMwYW4ZdDbWX/sEk9nqgwaZFuW5cE1Q/7nxMC8as4A
         C3PCkehi8lBEtEf8LSZtnWUzUNSny69SUIrXjCRFCS9SISWIERCr/QsVCFUIjCrY5Ah0
         hwsJ9tKTJpqPRZjDHxa9IcdWL/OdpbfUOEYaOqVZrJe/PLJWOGQvhHUis4F46iRGg6eV
         Ifrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jRE24QlZu3N5HcR2lPvS/KKZPg7/DYDFm39zaf5Y6O8=;
        b=bs/PKCKJTjjEL+pK2L8yqbU4VunHaNJAP+qzHODW7zXMiNtfAfCGL/nTDQrkHWaRFq
         ChQnAkjU7CcWku+eIF1HsaVZ44ouv6YZXdKSlfGcLAevX65ZCZj8xbzApgvScDpop6He
         FxAgBuea4FIfCabn0fXfhdoymrhWZ8ls5o9x/CLmzVVT3I771JQBPTXGMkoBjhQ6LURx
         mF4WXLfNOQxhj1vzqaqOfe5ZHn/rWIzmiw70KyxNfdJKji5QeRqK9k3kyKfwoAq+OWyG
         +EJD9r+hAIKLA13lURhZ53YaPoPEcXUjGis+niV1E+PSMt2S8yTkLvQDSydz0ElolQe1
         P3lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gpQqMyEJ;
       spf=pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=hwennborg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id 91si595320plf.0.2019.09.09.02.12.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 02:12:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Received: by mail-io1-xd2f.google.com with SMTP id r26so26902222ioh.8
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 02:12:26 -0700 (PDT)
X-Received: by 2002:a6b:148b:: with SMTP id 133mr10450753iou.81.1568020345459;
 Mon, 09 Sep 2019 02:12:25 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
 <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com> <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com>
In-Reply-To: <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com>
From: "'Hans Wennborg' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Sep 2019 11:12:13 +0200
Message-ID: <CAB8jPheC1sb2t9tiGyr0FOJRSCS9Vo60LBpSM5Szu5rR_CaRdQ@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Eli Friedman <efriedma@quicinc.com>, Stephen Hines <srhines@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: hwennborg@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gpQqMyEJ;       spf=pass
 (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d2f
 as permitted sender) smtp.mailfrom=hwennborg@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hans Wennborg <hwennborg@google.com>
Reply-To: Hans Wennborg <hwennborg@google.com>
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

> Cool, just landed my fix, and Eli put up another patch that fixes the
> arm32 issue for me (big thanks Eli).  So having:
> - https://reviews.llvm.org/D67306
> - https://reviews.llvm.org/rG7a7bba289521e6d4da199565cf72dc9eaed3d671
>
> in clang-9 and then that's zero bugs related to asm goto that I'm aware of.

Thanks!

I've merged these ones:

- r371111 for PR43121 (and other PRs)
- r369705+r369713 for PR43243
- D67252 / r371262 for PR43222

and waiting for D67306 to land (it would be great if that could happen
today so we can get rc4 out).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAB8jPheC1sb2t9tiGyr0FOJRSCS9Vo60LBpSM5Szu5rR_CaRdQ%40mail.gmail.com.
