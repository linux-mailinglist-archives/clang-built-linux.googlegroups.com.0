Return-Path: <clang-built-linux+bncBAABBWXBZ76QKGQE3QZCJFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 758342B6905
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 16:48:43 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 23sf7982344otv.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 07:48:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605628122; cv=pass;
        d=google.com; s=arc-20160816;
        b=uZ43hXF7vMffvFCKIqXL9tAJnCkpeGWbLMet1tmrqjJ5VH8Lymnf6U+kNhrd9dgj84
         4EYVapMqjQdvPzliNXp9G2fYN9Axq9jbzJyGuoZQypWqhB3Ux7XOgDlXqvVpAsrJmFzv
         CC1/hA453MA9FmU4cC2f0B95obknKWg0nzisNRHRiSAclKdtlIOyaTUEwVxk4PpQrtEE
         OIGhBM33WxOijXXxjqqrxAgEn590148OQ+lJpTcD4L02IonQjfmixHCQA17nirRrxlcJ
         iLNCYpsf/DPstein+QN9Tl8uIkA9gSTiAnHvmm2Fyr8JKOydDhpwl2BTfhl6iDdKzBqg
         7rfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-transfer-encoding
         :mime-version:organization:references:in-reply-to:date:cc:to:from
         :message-id:sender:dkim-signature;
        bh=Ql41ASKzVd4HRIB9E7ttsj5x3MuMUGikTiKrFTKFpWE=;
        b=emr0hcM25+k1mv3wd4fgOP0vg1jgRvTFbjUQjEyZ5cN6NmoOfIcZdXr99YtBrV+2L8
         p2MrDoqf2l5lnZecgLRwmx3Ctlpf4ttRPSGKoBDxY/0SI4A/Qd3VuoKR9aA88e7uh9hq
         O/XwlAVXuOqPYEShcS2nIzh3NDPtiyYpxjnKjG2dINYqAxi0Xc88t1Cg3+7nEajfyth+
         kL8DImTpKtNbGLs9IBLszYTUDNAEmTjOLqhcJ0HDhawMHzVQZbdBWOQrfex+0WpzgnV/
         PoFU4A885nc4FqyGpK29KJBIVTrM/GYloUYfz9BEe5CIwiy8FOgzDLXdFdH5cVpinfsZ
         a5RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of oss@buserror.net designates 165.227.176.147 as permitted sender) smtp.mailfrom=oss@buserror.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:from:to:cc:date:in-reply-to:references
         :organization:mime-version:content-transfer-encoding:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ql41ASKzVd4HRIB9E7ttsj5x3MuMUGikTiKrFTKFpWE=;
        b=WXI1L6aFdNDvISPFF1nYo6twfDW0/WWCXjQEjk4L/gQEKiqW/wpotBbq2SSZymrMlk
         als6BmFv/N5OT0oSmlIhAKFy7VyDJyiSsg3LbT11xwH2WgZbkbIB7GlGydQzTmSR7E8E
         agYPlI3J8Kt4myFY9FqsVtBRTq5SWHLxMMpjFa+jakCH/5ohFuzst/Aw9DStNJgavuu5
         VcOS7mLoUJZ5uTWVErr+BCVUlWifzOoLNpFuNRNDoFoOyynZ3KKRET26jjE7NRMg+QQz
         AXW07vG7XeJej8vao3Wf+qS/TshYexai2ze3RvbnTma6urqEcw7UIHeAtvUg3euLPE7d
         2qrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:from:to:cc:date:in-reply-to
         :references:organization:mime-version:content-transfer-encoding
         :subject:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ql41ASKzVd4HRIB9E7ttsj5x3MuMUGikTiKrFTKFpWE=;
        b=LEIHHPevUDGWsL03WGyI2OhhjA9k+O5h9oqx7ojTyBto0lPxYiMy6G8x5j6BH7BkH/
         JnB9sLkSNLJg5GpC/c8UtsaXZN0VrSCewY9ZtDNBjGGmi8dArvmhnEzJufpBXrnH+/SK
         bI4pbRlZ38mgSAGo4nAsCB/a8HI/9w3Zd41sQ31sMf/C6itprDd77UQebw7wyBhv8t/S
         XjUrCQlIy0hPv3Y1xiFIpwDmWUrNcYzD/IxIMSKrD4OC3ulpr/999izA0Q5WboKxCrQN
         6ilzhnY90lO5DPbCkc15D5SVTuumnEwSwgmgu9mfLj2tKLFxBGr9kTzsXwsR+54FhmUR
         +P8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ak/cBH510xqtsL89bWUFpvvG8IdlFYG6+Y5JZ2AFN6XgGK2t3
	UBvMGdg5mmZrLZaGlKcU+WA=
X-Google-Smtp-Source: ABdhPJycLeBkG862w69VIaOJBY1HVtlkXLpLKTuzFwrXUuMEaMVK2ChXhElI8lPnlk+MMonLh6gMOQ==
X-Received: by 2002:a05:6808:3b1:: with SMTP id n17mr2604759oie.139.1605628122225;
        Tue, 17 Nov 2020 07:48:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5214:: with SMTP id g20ls4084232oib.9.gmail; Tue, 17 Nov
 2020 07:48:42 -0800 (PST)
X-Received: by 2002:aca:c4c9:: with SMTP id u192mr2716079oif.69.1605628121979;
        Tue, 17 Nov 2020 07:48:41 -0800 (PST)
Received: by 2002:aca:1204:0:b029:e3:5820:22eb with SMTP id 4-20020aca12040000b02900e3582022ebmsois;
        Mon, 16 Nov 2020 12:28:34 -0800 (PST)
X-Received: by 2002:aca:4a51:: with SMTP id x78mr329468oia.86.1605558514449;
        Mon, 16 Nov 2020 12:28:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605558514; cv=none;
        d=google.com; s=arc-20160816;
        b=BtQbz42Ue6fW1ktOugm/1u71XsK838M1QS6i08bRiicRsnGZsIY26ky+jq6HEfbfvX
         Qp5Ksb+JyJvyP0gq+uPbWXB68U9r6Wz2t7U1ySuYNV6/QfxMVcu/we/9Wo7RaiELyJPk
         pp5tC+3CHeVe1nXQZhgwe4YvEK+NOfVVvumZzxh0a5SDeWlWYG1Wed7BS+L4y+j36gSn
         lNhGfSkzayCHI6WXn1CtLx4Fei26nqUMA/AGplrR0ZuFO/sDFwvI8Ddp52mk24+58+Cp
         y2AO8iXkQyEXuIbQ0xH39Y2IlRDxfAUZJRMyovVkvzy2bljFz47vuB7l5K08CeVNrGTL
         1T/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:organization
         :references:in-reply-to:date:cc:to:from:message-id;
        bh=bv9lXcxiK/+MoSEnOes+R76/0Obz03UeO0SJPU7ckRA=;
        b=P+TicdRepdeZ45R9d+fJOaojT+aDyriggeg2uKXKnH3gKLDPWqQbHKPzjtAqn6VqDG
         nL2W53cFcn3L4wsU5r65AZIBRRACZ4VTy6jYxxwcNfxMDXSIEmnJ2fu707a6KlJwjHqq
         49+7HgjLOupKiWaiKKXFo2e3oV7diLhu9KKvDpqeqvi463UP1P/YF3V9Uo/AQfh3cOQZ
         RX6ibk8IWnL+Mlvy9zOrc9JPhOJi8E7tNqqP0ZSDfjR+CnKzMIXcU7St1Uy6TqzhCYJ5
         gcaZtWP9SJHsQXkjhZj2ziF8T0p131WJuDv3i0NQ46pJ+FTgg4ZO23QFJvHnLWGzqsIN
         AHpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of oss@buserror.net designates 165.227.176.147 as permitted sender) smtp.mailfrom=oss@buserror.net
Received: from baldur.buserror.net (baldur.buserror.net. [165.227.176.147])
        by gmr-mx.google.com with ESMTPS id f16si1765848otc.0.2020.11.16.12.28.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 12:28:34 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of oss@buserror.net designates 165.227.176.147 as permitted sender) client-ip=165.227.176.147;
Received: from [2601:449:8480:af0:12bf:48ff:fe84:c9a0]
	by baldur.buserror.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <oss@buserror.net>)
	id 1kel5l-0005ry-Lt; Mon, 16 Nov 2020 14:27:13 -0600
Message-ID: <e19e3a9f47c988b30a19316ee3de2b588e20a641.camel@buserror.net>
From: Scott Wood <oss@buserror.net>
To: Segher Boessenkool <segher@kernel.crashing.org>, 
	=?UTF-8?Q?F=C4=81ng-ru=C3=AC_S=C3=B2ng?=
	 <maskray@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, kbuild-all@lists.01.org, kernel test
 robot <lkp@intel.com>, Brian Cain <bcain@codeaurora.org>, Alan Modra
 <amodra@gmail.com>,  Masahiro Yamada <masahiroy@kernel.org>, linuxppc-dev
 <linuxppc-dev@lists.ozlabs.org>, Nick Desaulniers
 <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, 
 clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor
 <natechancellor@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 16 Nov 2020 14:27:12 -0600
In-Reply-To: <20201114005015.GZ2672@gate.crashing.org>
References: <202011131146.g8dPLQDD-lkp@intel.com>
	 <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
	 <20201113190824.GA1477315@ubuntu-m3-large-x86>
	 <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
	 <20201113200444.GA1496675@ubuntu-m3-large-x86>
	 <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com>
	 <20201114002037.GW2672@gate.crashing.org>
	 <CAFP8O3+NowYwhMAywd=R23HgOYnroWV9ZRkdyAejd08qsOF=6w@mail.gmail.com>
	 <20201114005015.GZ2672@gate.crashing.org>
Organization: Red Hat
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: 2601:449:8480:af0:12bf:48ff:fe84:c9a0
X-SA-Exim-Rcpt-To: segher@kernel.crashing.org, maskray@google.com, arnd@kernel.org, kbuild-all@lists.01.org, lkp@intel.com, bcain@codeaurora.org, amodra@gmail.com, masahiroy@kernel.org, linuxppc-dev@lists.ozlabs.org, ndesaulniers@google.com, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, natechancellor@gmail.com, torvalds@linux-foundation.org
X-SA-Exim-Mail-From: oss@buserror.net
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on baldur.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	*  -15 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Subject: Re: Error: invalid switch -me200
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on baldur.buserror.net)
X-Original-Sender: oss@buserror.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of oss@buserror.net designates
 165.227.176.147 as permitted sender) smtp.mailfrom=oss@buserror.net
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Fri, 2020-11-13 at 18:50 -0600, Segher Boessenkool wrote:
> On Fri, Nov 13, 2020 at 04:37:38PM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > On Fri, Nov 13, 2020 at 4:23 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > On Fri, Nov 13, 2020 at 12:14:18PM -0800, Nick Desaulniers wrote:
> > > > > > > Error: invalid switch -me200
> > > > > > > Error: unrecognized option -me200
> > > > > >=20
> > > > > > 251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
> > > > > >=20
> > > > > > Are those all broken configs, or is Kconfig messed up such that
> > > > > > randconfig can select these when it should not?
> > > > >=20
> > > > > Hmmm, looks like this flag does not exist in mainline binutils?
> > > > > There is
> > > > > a thread in 2010 about this that Segher commented on:
> > > > >=20
> > > > >=20
https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD2391AB6E@k=
ernel.crashing.org/
> > > > >=20
> > > > > Guess this config should be eliminated?
> > >=20
> > > The help text for this config options says that e200 is used in 55xx,
> > > and there *is* an -me5500 GAS flag (which probably does this same
> > > thing, too).  But is any of this tested, or useful, or wanted?
> > >=20
> > > Maybe Christophe knows, cc:ed.
> >=20
> > CC Alan Modra, a binutils global maintainer.
> >=20
> > Alan, can the few -Wa,-m* options deleted from arch/powerpc/Makefile ?
>=20
> All the others work fine (and are needed afaics), it is only -me200 that
> doesn't exist (in mainline binutils).  Perhaps -me5500 will work for it
> instead.

According to Wikipedia e200 is from mpc55xx (for which I don't see any
platform support having ever been added).  e5500 is completely different (6=
4-
bit version of e500mc).

-Scott


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e19e3a9f47c988b30a19316ee3de2b588e20a641.camel%40buserror=
.net.
