Return-Path: <clang-built-linux+bncBCLI747UVAFRB55F4TZQKGQES4QBQYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0270718FE11
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 20:50:17 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id m9sf10265735plt.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 12:50:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584993015; cv=pass;
        d=google.com; s=arc-20160816;
        b=BCTOGDUJzPpD5ADbLt+1L7FRl7SasRUsH0MbzivQqr5I4C4asK9hRMEgqzS4Rwsi94
         NrMJCMjUnVUjvLhEgYQrtjUY6V0nmGqGqCk7PBp57uG7isAb0qGqT6W7iQYDDdzxPXwN
         jvcuKoJOupeBtErfgAT1pSRvFIODvFt4h3ss9ky2YN8DkURZvCAWBojL3mA9e42zc31h
         6610POkju5BD97DsFLzLLRBvcf2AnCJul8Qf/HwmcSvtRIvU1MSoe9WxGvTBwaKSVAVL
         PEB8O9KPc/IPYXh536fcDiLORNX2xM8WLum94M7ywkiNg/lUVIa8Ny5eDUte7Qm+QjQW
         Jr1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NOZ4PL/m1oW70wVAq/EwYJoMFwz4M3Lj+SBGwcw9+EU=;
        b=lfXhDcw0x0hSMbjPPZt5dXfQq39K+T3rgqqjBauV2/MWY7nfUdWtPNKUeF680JwKE9
         ue5YpOGIiRfCagm5L2dobU9oMT34G+mcmKKDTQks+dZ1Qew6RiAeYSpFGQtJrSpDQGCt
         FRaopR3FfOQD7jiMcZjaicBJ4VsUA4kt2zRxUsjtmvPpEn6l9IPluGyxMiJQMPNiiZMj
         uPNH55aJJChJ+PB3oupOT/qqPTOFVW7lZLo0rfBxL3jeVithwp41BkU+WAcnUmh232Mb
         bXz6goO8ebiRtMl19HtsVgv9Vm0fVl/WeWEW+YdNvUbAetNxkXj3BvgC9tqOaBKEass8
         opLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=FY2Jx9nE;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NOZ4PL/m1oW70wVAq/EwYJoMFwz4M3Lj+SBGwcw9+EU=;
        b=FxRYQnMrFmrX/s6L5D+MtxREFne6+NEbCsL/cfpiT4fPdw58tgTtgzJ68PVf1I0Rk7
         q8RuEAaRewyK+wBEUq9bX1RtFtO2rV7QtByJLSsR98tTmksugccsapQFZ4Tk5THtGpr1
         7qEXsQewmFULaLDFn40vpw1ol57WJxQFusnO4p1dl3lQfJk8ow8evjIHSG8Kplt1YsY/
         uI8MaaA9WXhEb8eVvyrYEt+E1TviYGrF/ckVdEekNEV3HVllQQTtX1VdKOa/az/2IATY
         rVT11rOKOpBYu/saULyGZHoUne6gKC9LIP48PVO+mnrWhoHjHBhpua5fc4Oldr7M8lzM
         0Sdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NOZ4PL/m1oW70wVAq/EwYJoMFwz4M3Lj+SBGwcw9+EU=;
        b=W0HlwHAwnB0AWrN1bXkLhwFR5Fj/3wFlLQzeSOrGn5JOYccvNkBoWkZWQIEBRXWNKJ
         t2e0vGncW/CKnM/u3Vi0Y31nbqVJIyNL/oqEgt4dlHJu9s3q/JAFRhuvGZToA3jR/bkx
         JkYEYDTfUgq6n/o3a7SEFWLfa8bFIAXdG/q8vCCnGDWbMdp2RnDhKIE/foqPq3ryfgTm
         XLSI5Er65uipZjZ1gIkwF2QTvApBdhz1j8AQliiI9smwj2oDNctAMP64tf1SR2qwyGO8
         xL7mY8JB55iTpdxS2ZdWTtWbVsGaxz9oOcKefr31LAH0L30Z/gS5bShfJtdVtsKFgBJq
         o20A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3pxpcGFazenA1MpB/MWPALfBjkWub0ivri33lgD+0hapV+wNdp
	NfccRAGaClEHeraw4nwRLRo=
X-Google-Smtp-Source: ADFU+vu+VuV+geMzsVWNqMxxOM5Eyg9ODNrEbgGzer0Xl1kBzCHgVsYuhK5CLSt5csV2D9vy6uqhjw==
X-Received: by 2002:a63:1e44:: with SMTP id p4mr23875717pgm.367.1584993015641;
        Mon, 23 Mar 2020 12:50:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls481723pjo.2.canary-gmail;
 Mon, 23 Mar 2020 12:50:15 -0700 (PDT)
X-Received: by 2002:a17:90a:faa:: with SMTP id 39mr1122033pjz.190.1584993015184;
        Mon, 23 Mar 2020 12:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584993015; cv=none;
        d=google.com; s=arc-20160816;
        b=Y6szsvMEBTcvHedelncpC7mKzZH/SPEBzHJoM7CAzR35jhlWv89kalX4mn0mRJVGof
         gM6d3ZUIAA8BkZHBdEd91eSRsH7CEWp+9SMWUxFoL/6DXjv9NGTb+5suprw9FB9gKMBE
         PCnaMBAt03A/uk+GnwBd5AOWrKu8Ru10ir3WrIOsg0AkdnPsxcDOwF9tADlA35Y5+w/k
         hOelzl8CyT9Rf+qgx2adKp1GtlEwRcZZ25svONHyi+MOzfho1GH8fNEIc5WiEU+2Ka8c
         3VbqqRr7pYqGcj1BNEBFsWc981rl+B0nxyxLauFl6Tj3NHnuyLfo8MG/2AcLyqL1QbjK
         fkig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cuH72NiAv5HuYRk8zsDGr1kwb4g2g9Y4OMJMDJRI6Hw=;
        b=PklRsA0mHwj777E4mAMybMGzO8LIX+SBCBG/kO/XTTGg7fuwbP3QyirFEvidNiqOJx
         lSY7YAQss1Figkr19eA3ekAjVbrLC7VpRR5zF7qG8bJkyhunA4uaufmyipdKkfuuLA5U
         BDfvTo5ADE4oiZ/JAJBOvTKVxNl8FIJWbISXoVNzniMR9nvpuRNiYxcp97mJWzV6SCmM
         1/pdywi+J39diMudfgvl7tVZhZwTVQ7FlY2nFRfOz9J+pde8VqWHqH2fXp4pPl7MzPfo
         6+KLmcgorKD532x+EvnSVmlIy/95tK2kWQTStyyrJHBA/3EukdagV9bEMYnE3Qym/bpA
         0Rdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=FY2Jx9nE;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id j14si875648pgg.1.2020.03.23.12.50.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 12:50:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id f8bf2689
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 19:43:10 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id d35ed0df (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 19:43:10 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id o127so15701665iof.0
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 12:50:12 -0700 (PDT)
X-Received: by 2002:a5e:a50f:: with SMTP id 15mr3802700iog.67.1584993011135;
 Mon, 23 Mar 2020 12:50:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
 <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
 <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com>
 <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com> <CA+icZUUjP7e2zgrVCFenO_YJfpcOQWV++kuU5UWGKN_5udZXSw@mail.gmail.com>
In-Reply-To: <CA+icZUUjP7e2zgrVCFenO_YJfpcOQWV++kuU5UWGKN_5udZXSw@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 13:50:00 -0600
X-Gmail-Original-Message-ID: <CAHmME9quSMLwLacntdhvLKVDVtg6QVGhOQxADzz_4kVZYOJxNA@mail.gmail.com>
Message-ID: <CAHmME9quSMLwLacntdhvLKVDVtg6QVGhOQxADzz_4kVZYOJxNA@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: sedat.dilek@gmail.com
Cc: Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=FY2Jx9nE;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Mon, Mar 23, 2020 at 3:53 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> Hi Jason,
> I have not checked your Kconfig changes are really working, especially
> I looked at [2] and comment on this.
>
> I would have expected your arch/x86/Kconfig.assembler file as
> arch/x86/crypto/Kconfig (source include needs to be adapted in
> arch/x86/Kconfig).

CONFIG_AS_* is required for more than just the crypto.

> What about a commit subject like "x86: crypto: Probe assembler options
> via Kconfig instead of makefile"?

Thanks. Will fix silly verbiage and update branch.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9quSMLwLacntdhvLKVDVtg6QVGhOQxADzz_4kVZYOJxNA%40mail.gmail.com.
