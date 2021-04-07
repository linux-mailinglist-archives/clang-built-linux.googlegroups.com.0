Return-Path: <clang-built-linux+bncBDWIJUMT74BRBQOMW2BQMGQEEYTEA4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8E4356C20
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 14:32:02 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id v3sf11724097qtw.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 05:32:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617798721; cv=pass;
        d=google.com; s=arc-20160816;
        b=nyCTrz17HgDKRYxVT2t2nENHbZxglxU1JPiywbObB6DhH6rnHyjtOGAlMGaLOS/130
         PqS614GW9FiBlDyIKqrpGCw7yEaYc41lEyBiJwvmB57diz4w2wesOnfAntBdjdXhj/0s
         +msz6UTnemUu9qoH8sPXvFT0oVVoijITARn1dPQ1PYXCs8KsqoqVxkw1UyKXAI4kuKQc
         qRW8hXwTjtGjUMONUk/IkmE5SfebbeN9iTWwPXfskAfFk5ZPET+rKWpMOL/o6Kwqntyv
         gBCznN+8fjWjIDGg/uY/5GR3SApIVuAkV3ISY0LUnYQ2Go/kiuZMiVud8t4yHRDHM8K5
         ifMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=w+4/73ra62zFEMQ39+6XwHlBHPhn3DnLG6554xXjRcI=;
        b=N2ism+46EzY2KodP0xF9Im3gaRqYbJS2r3hWYH/O7OCeIDHWyUaLSgmK/MUA4F/kpL
         JxKSeoFP/GwfoGeWHvx1FKST7HIrgFfYqh02xbii8vQHicyfUejssWIbbKfZid6P2rqK
         SimKgZroI3ViNd/3e2I5eawLKjgh+e/Did+pNIWXSCbk9OhGNIQgSP27VK1E9THMhpRH
         +nWT6/M9Ni7XeWxaedANIC9S+hPy7cWi3GQ2i8vhzWdEo8uQcSranmIQy79XdtplxrLP
         0Lzd+FdMNmxsCaonr7D7OiaMFVw34UQIx0bF3qjweM2cTtbKlRFxNdXqSYcW6zkNCdZR
         CPhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w+4/73ra62zFEMQ39+6XwHlBHPhn3DnLG6554xXjRcI=;
        b=XXkkqh/KwSTsu9HWiTefz1Efti7P0FJ+yQMKj2cguG0vxWKe+0DIhj7yHxb99OY3i1
         SdqNfiq8ldQimMpXgVLfdefVpPD7I8hbLA0UK3G9GnlUFXc+y34hfC8R4ZUcV7JxlsXQ
         4iHcIv/+0luJBpIxeNeqF8/ndaNS4lzZrfAE9QmszlMkI3OLN+I6m6lcBMhssQy4n1m8
         3ov78Mt1rTKZZIii8P5dJH4lCPhP2xrIwuSP8+wHSTTIVihqsXJ5TiiBMpxMYD5RScOj
         Vm0Luf3ELggOMa7hmcYMiE35ijp3+ulARa0JjY6zj74MV82Ojc4LGzOVCFdin/HDsEd2
         /M8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w+4/73ra62zFEMQ39+6XwHlBHPhn3DnLG6554xXjRcI=;
        b=soCWijvD0Y6LEoGD/h8I91h/m/Nbmd91oQD/B2u6P0oZ3/m1WfWnsriNdFCkCpJgJN
         A8GgSEQgmV7A54mKTGW+/wTltk1zpiMB1iN8lZ6aKAmeWSV8/dJoI7Ylr6LEcmVpgrTC
         Jk+1cVqPDb+t0UFqxIlezB99o0BiYBJb2EBHMjE7wbWFIm9fRYKVep4GwXav7IUBC1Oj
         6e5F/MqCW7ucHnaOsmbrBJQ03TH5DQt6/hTqMnODlvJuRCeUT6adl9qEnztLucg2doww
         z1FczjGsloU2J/KyFWqZRMpZOvkGvf4iynaNvSa8vujzJgIOdrvnQYflRiRrHxQXlR+S
         3HOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZtBtM2QJyk2eacFN04K949CDdPjlSJzmxal1ZO5X2RUFbSj+k
	1lP2XmvCsqgrkCNx0HPboyg=
X-Google-Smtp-Source: ABdhPJxi+U+oVbWg/6qksO935a6r1P/URe6gfCcCFmUA9t/+lJhm81I8OMklTOcJW9MmQ6RCTlvMKw==
X-Received: by 2002:a37:d2c1:: with SMTP id f184mr2848224qkj.107.1617798721496;
        Wed, 07 Apr 2021 05:32:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1447:: with SMTP id v7ls842042qtx.4.gmail; Wed, 07
 Apr 2021 05:32:01 -0700 (PDT)
X-Received: by 2002:ac8:48c9:: with SMTP id l9mr2413110qtr.45.1617798721056;
        Wed, 07 Apr 2021 05:32:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617798721; cv=none;
        d=google.com; s=arc-20160816;
        b=Yn+aO/X5f6lMasGUWs9feuAOPRbn7YM8XqcJ7qPuS07OfcoYVbJ/KfyjiheQs527JW
         X7JPXnleZ40cCFKG/bBpLxUZeDVwXSnw4HjHC8WUnsHt47rNYfs2EG5SSVfK3q1RDRWg
         EE2x/1ku6BEhN2KzvS0pELsBQW8y6IIXlpP1qPGy7pGhN7nA7YMZ53D6rir7rVjvxYZ7
         pUpcwVLgS3afxFwEATTuQlin6D5BlQr0jamj6gkIw5QVG8aAK7/2Hg6crvTCVNtne/8/
         fUQjfc1sYp/Fiux78r2khpw8UdjIoFwNNIdqsz4YaWmUU66q/yFJh0jj6EjGEtyODlG0
         Daig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=vbbGgN2cwr2tO5Ysdk3P+0/RuszQjJDlN6H39qNK6q4=;
        b=Zl5tVcQWIJvJQLcKLmB8i1ddqfE0qmskIFGAI4v+V0B2wGJEETpGr3Z2k1cBJ1Fa4N
         9gIJ/lDofyPtqJCSNQNLKexXJn2MKfx/e3lm80WMsfDF0aBSsszNMUgBv1xbzjBrRtm2
         YaRGzZkj3gd3+I1l0nnnZgHHnOTpC3sbqKiOLwtz2PAEc/7o94LxNvqD+o70lOqqJg90
         ymy+JwWV8FycXKvqdmTr+8P8kKsQIvGQt41QAa7NY4JFhFiO2KKKFruUty9gERci9E80
         nsU6ayh3vu+Lv8P7AmxNjtgdoI+EZPJ8aRa4F704O57IExO3Bk3ShY/9EbXDnUA82mb1
         9VOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a15si3504536qtn.4.2021.04.07.05.32.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 05:32:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D10B860FEE;
	Wed,  7 Apr 2021 12:31:59 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=why.lan)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1lU7Lh-0064PJ-TT; Wed, 07 Apr 2021 13:31:58 +0100
From: Marc Zyngier <maz@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] irqchip/gic-v3: fix OF_BAD_ADDR error handling
Date: Wed,  7 Apr 2021 13:31:54 +0100
Message-Id: <161779861852.1095473.3028175861742245454.b4-ty@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210323131842.2773094-1-arnd@kernel.org>
References: <20210323131842.2773094-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: ndesaulniers@google.com, nathan@kernel.org, tglx@linutronix.de, arnd@kernel.org, arnd@arndb.de, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 23 Mar 2021 14:18:35 +0100, Arnd Bergmann wrote:
> When building with extra warnings enabled, clang points out a
> mistake in the error handling:
> 
> drivers/irqchip/irq-gic-v3-mbi.c:306:21: error: result of comparison of constant 18446744073709551615 with expression of type 'phys_addr_t' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>                 if (mbi_phys_base == OF_BAD_ADDR) {
> 
> Truncate the constant to the same type as the variable it gets compared
> to, to shut make the check work and void the warning.

Applied to irq/irqchip-next, thanks!

[1/1] irqchip/gic-v3: fix OF_BAD_ADDR error handling
      commit: 8e13d96670a4c050d4883e6743a9e9858e5cfe10

Cheers,

	M.
-- 
Without deviation from the norm, progress is not possible.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161779861852.1095473.3028175861742245454.b4-ty%40kernel.org.
