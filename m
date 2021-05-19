Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBYEPSOCQMGQE2PIDUFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A13388926
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 10:10:14 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id u14-20020a056830248eb02902a5e3432ae9sf8408737ots.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 01:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621411808; cv=pass;
        d=google.com; s=arc-20160816;
        b=g48PQDJAy0KJYKfM8mxmnMPw7DgmxnMLhWQgqL00VLDzF5K4YrdaQZsPDAtV5yWT48
         H571t6HTySch8IQB+dIxiVs+0bKZSXbVbE/eeOS45K/axEk4dx/IK0y6BB+LtAZ5Ff4C
         dq0CcY31U4ajCF2zaWA8eITBZo/g8s9NG7xOP2Ajn5BU2hB/8H4C0mAXq4nXRy/RzlzQ
         ze6h7LW6AhCfMbm3/p5S7mmVUGioYTNho2AE9C7iRJ5jYiAdbcSfgwRQAYobSEg02xv5
         i4cWvN6iJfB3acC+fBho2sG6jEMG7w6+XEiE7ad4wsSCAUTenHapnLfSIHs5kRUTchaM
         QiLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xV42itbYp3mIiMGh6yyzeh0z9O+93QWJvBlD2XS1tnw=;
        b=te8Xe2XAq25Frdk04vFolHkEv8rKYRYaV3oPu9F1oK1nGYdHjEsGtQK6p7FGYvlGGE
         U3tSREEYVaj2qyBsiAGfggAD7ggMQ/TvgGaX8ishDTRUPB48CAFpzU3OW7R/m3teRhjh
         9zfg9MiWEU1i0cwLzXmnDES9oeJh8KG0hpFp2Y+ceBKbHWvbbQ8Qr/kF5g2ha8O+D6BV
         PDewmjPA3sAuHyv4vjIQazyVk8gaeEBmP94WHGlh80Z320r/Oq2tMirrUE5bynJH6QPM
         nZwAio4fY5fYlZGVbg2uQT1deBbsPTOMZRH6q9T/Gs0wSDpFZjiVohgD+v2BciJ60THk
         DBww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hsTBydpA;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xV42itbYp3mIiMGh6yyzeh0z9O+93QWJvBlD2XS1tnw=;
        b=Gfksj5DVp4FfhGlJ0+OQSIJ47g8sYTRpIJoDwhYaJ+e7SlsNjyS+G0l+5IVctZ2b59
         XrSe51w0P8WFHFZ/YkCfaIoFcbmnp3IqrwmLhX+A1Ex0dnt99YMPDHt1GGMlQGbjL85/
         aA6XBgP4PCEUgWbyYlXi/eUE3EgsS57/mLDnDnTpSyBUnd9wfOzAPxQn9LdJbWJuxWpT
         xjMXirve6qyNAR7YWMpl/eIbwQtlGfdB/C/sm4GkUwx5Mh0H0nM0sYgQ5MFdx3b2j7p2
         N0+DJZRF9+ahK6RLeJDCLBTjYtT3dqohjQEOXuz2F7E9jIsJHh5YHuGToeqHvsiXq3M1
         2vwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xV42itbYp3mIiMGh6yyzeh0z9O+93QWJvBlD2XS1tnw=;
        b=LTelpC/ammlYxJYMZ9dlzHxPCzl8nWJKg/lxvERDk2ijR6RVYlCpOD24IVyrREkKE5
         ucknplFANgISCn9lsf8YtxkW0CIe4fJzjFRVxScI9Wj3t75GbarU31dgcoB4hA1lDSLF
         egHzkJ55xVpdzr/eLNQKecDfghEcEiWrbunYthasDkEmZjMnlUS2TmUyXkj4IFe66iIW
         6RyuKPZgyvbXUGBGQ0h6Wuhi10ixCkG73bXIsECcTe423SA6j3YMchC4ujXTy7y06L8g
         kfOck/Tr5Oy7tnNj3tWZHfVZJ8CIU4qxQ33Nul1jsSHN8gtkBnWrLE4omj0mB3ykq+5D
         iEKA==
X-Gm-Message-State: AOAM5322eQGMgQVKeljQo01XCqBZz3XXyMMikg39d7xFjV4uEU6n38EC
	YJM/N1Nr9XqEsXPDXg/sEtk=
X-Google-Smtp-Source: ABdhPJxAS6omZEWF/5k+Kod9AVbDyFaXw00QxjcaXFZF/FAsvC3AXVf2t5cW8IRT6wLa4am6nDnMrQ==
X-Received: by 2002:a9d:6242:: with SMTP id i2mr7838317otk.273.1621411808436;
        Wed, 19 May 2021 01:10:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c8d:: with SMTP id a13ls6481797oti.0.gmail; Wed, 19 May
 2021 01:10:08 -0700 (PDT)
X-Received: by 2002:a9d:12a5:: with SMTP id g34mr7861968otg.204.1621411808030;
        Wed, 19 May 2021 01:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621411808; cv=none;
        d=google.com; s=arc-20160816;
        b=yCg97mFrWs7z9vE3QWYnxcEBaktej4wZ4ogo4wG6EqBYZ9h7Fhx/wWG/dVTkxBPrjX
         CkN8X0mPfgclByNCpBXD09y+9ivGh9HnH4fSmYY0S83YZYQ6Kg0yIhy6adRyPMIUbi6z
         dld5st7VY5lWEgzsd2kkVga3Lr9NcrDLF2K3XWIGzDXpKenYoj+p7s7JNDqpQ88o92Ql
         ASf2eHFHlv01Xm9ioAcM0I5ATvOf5oKdzK1AylalMjmyElrEhZKLHhBruMFTX07Pe5Ps
         bHXyNaLHN/4wsAFWOifMvTGZVZ3Py+IvX30+9OSFnGJTWZKPDRP8W5RJ2EBwpX6iCYLR
         cMNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U1m3QthGxvv1NLoiTwxWzLfeaQCVyf+o0wvQq3RcR54=;
        b=V1VOV4qi+Wn92zb9h++lBB/80v1sLuYA3Z8tR0v9JsoZUARfxPzTdlos9OW4eQ4GmU
         tPd8VU4xmsgr4F/1vJag/A66xcSo5gaTYrKyZ+JE9Zx1PyprHnkBh5Z5wWvo/UH1xESj
         Y9BmNfwEpdp6SnWHolrPmQZdDnZYxCyhtiJRGYLbYn/w1utmG2x392V0xSwj2S31g07Q
         hup70qBblyFRYItJ5FmfSOwNhNuJnwNjCD0tFEeZTFUZeaRJKsCd0OdiEQx9aqB5+O0I
         j64aADSduogli52FSrnkYRonBMXaHtmKM6UrBm40SuhEdt16os4jdP2EzrdeWUw+fnmL
         yekg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hsTBydpA;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id 88si1975858otx.3.2021.05.19.01.10.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 01:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Received: by mail-ot1-x335.google.com with SMTP id 69-20020a9d0a4b0000b02902ed42f141e1so11047282otg.2
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 01:10:08 -0700 (PDT)
X-Received: by 2002:a05:6830:349b:: with SMTP id c27mr8184955otu.251.1621411807615;
 Wed, 19 May 2021 01:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140015.2944744-1-arnd@kernel.org> <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1> <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
 <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1> <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
 <YJ8BS9fs5qrtQIzg@elver.google.com> <20210515005550.GQ975577@paulmck-ThinkPad-P17-Gen-1>
 <20210518232012.GA2976391@paulmck-ThinkPad-P17-Gen-1>
In-Reply-To: <20210518232012.GA2976391@paulmck-ThinkPad-P17-Gen-1>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 May 2021 10:09:56 +0200
Message-ID: <CANpmjNNqonF82pzkmHnNmhPtoZfOihAooanVkt0WUFRaNdEkMg@mail.gmail.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hsTBydpA;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::335 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 19 May 2021 at 01:20, Paul E. McKenney <paulmck@kernel.org> wrote:
[...]
> > If I have not sent the pull request for Arnd's fix by Wednesday, please
> > remind me.
>
> Except that I was slow getting Miguel Ojeda's Reviewed-by applied.
> I need to wait for -next to incorporate this change (hopefully by
> tomorrow, Pacific Time), and then test this.  With luck, I will send
> this Thursday, Pacific Time.

Thank you! If I don't see anything by end of this week, I'll do the
reminder then.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNqonF82pzkmHnNmhPtoZfOihAooanVkt0WUFRaNdEkMg%40mail.gmail.com.
