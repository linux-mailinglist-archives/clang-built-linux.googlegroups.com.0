Return-Path: <clang-built-linux+bncBCALX3WVYQORBFFJQGEAMGQEYQSZJPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FEC3D7DEB
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 20:46:45 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id f24-20020a4ada580000b029024abe096a35sf19932oou.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 11:46:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627411604; cv=pass;
        d=google.com; s=arc-20160816;
        b=wL0lAAZez1TRmr7JLuZVDInAHdrXiBdpyc4k1pwYjab+/iOQg/Bp+Oxurclnq+9cu0
         MVxqKVtbY99Ng1V0/vW0h7TRnP5+CisfST3vhVkE8OlYKcyY+1v9F9GcQ4EcpxQy6YHc
         j+tOrcU7EVkk1M/IAo+47wdyGCGrH/P8K7navpQeB2xQGX2FnQtYFMbqA8KHDuSFIZo5
         Hu+Eaa5t0kel8SckRhFLvd9QHkfIn+oaNCpHsihaFl4w/42OYCZjA6gvfrKCn6SN8FS/
         LQLPLwxiDSOy61BxeUepodEEqQADq9vQA7rQ/mVIDDktAfDvG9knnB5LoKeRLPOKx0k+
         f0/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:user-agent
         :message-id:in-reply-to:date:references:cc:to:from:sender
         :dkim-signature;
        bh=S4mIdezxEKoyx3qnKX2OumDParmw+UXlVmfcNaSC1UY=;
        b=GtP7re9ASgfBTcUZNds5VJQkwECdrlQqvJEJWQzd0l9QQ/uHyO+arEA+1nH2PPhRKY
         ND4dNMgFMG5Qv0c1dwIL+G1uSsfDaSEEHa+SwNW8rZR+wP1bbOYY1mcGF7j5wBC6fx61
         Bo5qbwi40VwuLu/YATPsBkF+YMzXdtVRKChmvORV7RxN2hWydb2y1DvO7s/92NHs7WN9
         dotglQhBDp8U54FguQJwJE1w5NvHuveDJUN3ygGMjgH//bWTobqOmVVKeo+KMnnpHpZX
         ZS2Nnw6X419ILEtWmhhpb4N8lwmGS788914NpA7/2Y/7qzzqCyH7XdqaipB0KS7xXevo
         fEaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.232 as permitted sender) smtp.mailfrom=ebiederm@xmission.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xmission.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:references:date:in-reply-to:message-id:user-agent
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S4mIdezxEKoyx3qnKX2OumDParmw+UXlVmfcNaSC1UY=;
        b=gQ8/Iyywl48wyELAmWdVR6w5LVWSPIUKbXLTb0qTXb4jag8B6L+IEp9shf4lCe9OW0
         DGcDByH3cN0XVTUaean+AWQZS5b5ph0BPI3DdezZld3wubx0O/2TkKRon6z+GZjFrZ/Q
         jvCjcKRkyTdgZoJkzANc7iY2CNo+YnYHfwedm7BCTvWtvDGq9T3+YrRFK+jA9tbnL3EB
         m98OuSdfu79fZsydwUPPggSO+y5CkCAEb5Vx+ZOKkxGAqLaX57Ukg0gCWfLMnBqHCID8
         J7iBOMdRsSrnaDpUaTmYIQkvP+hBqd+1Fm3/royCTTYsOpJ7OKBxAHGnGQ1V5Ug5saBR
         T8UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:references:date:in-reply-to
         :message-id:user-agent:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S4mIdezxEKoyx3qnKX2OumDParmw+UXlVmfcNaSC1UY=;
        b=QK1AW4RYOSPY0/7wLetfLHDf9fdEQo0QcL36/H27/bWrnHxNZm4KzGFMfPEcgzuu0U
         umCU/botU14paEV2kw1qIdZChzqWv6XGt0HaVzd36o1eHrjkmOc0gfdqrJWBmHlHst1d
         jVtM6QlTDgriOeV4Qh07EVO7T4Zgo1ZwxtJRmjOhElIM8UUg3amShaIGxpsudyi+kCTl
         UlrswGP/jBGjhE4xOPBsBhbYWb0SrT7kfQgZqx7kJ8ZLH9l1KIKl+hUQ7HRsC5r1Alic
         8judmj629FbahZmoqzNr7G7+bi+NYfTG/k3bS/7KkMN1dXNhzY88jnzpssN+EckPDNOv
         Vj2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uQWZ7G41Zta1o07oRfU8l8td3Bfs4TefGg+pwBi4fmIgB9zct
	8KHEeilxklfgr2xXKwSwfkM=
X-Google-Smtp-Source: ABdhPJzGOx+t/2WcRIu5RoOhtNvMZg242JqbL2xRUojzU/7mf3j7xFbzZoLHCCohe6akYDiDnySAtg==
X-Received: by 2002:aca:1809:: with SMTP id h9mr3930816oih.4.1627411604088;
        Tue, 27 Jul 2021 11:46:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a01:: with SMTP id v1ls7054954oth.3.gmail; Tue, 27 Jul
 2021 11:46:43 -0700 (PDT)
X-Received: by 2002:a9d:7985:: with SMTP id h5mr17331829otm.283.1627411603786;
        Tue, 27 Jul 2021 11:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627411603; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5s5szERl1FQ4kneVb+w4NKJJk7tPiLSK1b2M1YnrNSWlzPG7gdGBdE8++eBO9Y1GF
         GTIw9P5JT7qxEPAndZnwouyuNDvM4fP4qNk2GSvk8bvs7OdNjXrhTmpCl6lDCIA/K6Tv
         hmEfKVeETedD1h3uVp/rpXG0eD14vh93NJqQPKy3+tOw8bDI7rsUcWMtlRS6MTGEy5Pq
         xfmsQfLmOefhmHi2Qs0332fSCObgWnB+/6fgZzIgb0OQ8iyphLcIzCARqyZOGJlssm1C
         /XjbK5wOGfWWwm1KSRzDwVeTI0cXxRBQe66P8gz2BeZ9yk7mHAcS2VfmepZCyuQ6VY5D
         nKow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:mime-version:user-agent:message-id:in-reply-to:date
         :references:cc:to:from;
        bh=vweB/+eLREyXVgB9lHptyRDjPRVX6aeBDK/rUuoIDQ0=;
        b=U1EejILgKX/k5otTcZr92gbCyKyysVTDSLqzZafNZCd1HqHsIMrpP1pthH6HDTLjUV
         d/UK2Pkg9htszG/YQvgPxFYPr2i0zz05eBFW8w8ajO4oxcpiOLNMtqxS0yQYzdNbFBXA
         XAoP2gEP5epzqGDf0PxEW15jJtaJ+tUCgDH8Yk9GYZiIEala+ALXdeV+A5LBn6kSdqx3
         LzNeNX3BtgQStxnggkMICrCwHfvv0HlhORy4v33wSvOxxZSXvBaocbjEeFleXV40zTxU
         UHVLn+cCljTJlSQPX4PKiZw2OWBhdTYuzvfPrcqg46n7/0gHNelOAuEmJUnryTS421Aa
         PGcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.232 as permitted sender) smtp.mailfrom=ebiederm@xmission.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xmission.com
Received: from out02.mta.xmission.com (out02.mta.xmission.com. [166.70.13.232])
        by gmr-mx.google.com with ESMTPS id m22si376685oie.5.2021.07.27.11.46.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 11:46:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.232 as permitted sender) client-ip=166.70.13.232;
Received: from in02.mta.xmission.com ([166.70.13.52]:47884)
	by out02.mta.xmission.com with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <ebiederm@xmission.com>)
	id 1m8S6C-004DYb-2A; Tue, 27 Jul 2021 12:46:40 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]:57748 helo=email.xmission.com)
	by in02.mta.xmission.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <ebiederm@xmission.com>)
	id 1m8S68-004Ncs-Ff; Tue, 27 Jul 2021 12:46:37 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>,  Linus Torvalds <torvalds@linux-foundation.org>,  Nick Desaulniers <ndesaulniers@google.com>,  Miguel Ojeda <ojeda@kernel.org>,  Fangrui Song <maskray@google.com>,  Michal Marek <michal.lkml@markovi.net>,  Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,  Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,  clang-built-linux <clang-built-linux@googlegroups.com>,  Geert Uytterhoeven <geert@linux-m68k.org>,  Christoph Hellwig <hch@infradead.org>,  Nathan Chancellor <nathan@kernel.org>
References: <20210708232522.3118208-1-ndesaulniers@google.com>
	<20210708232522.3118208-3-ndesaulniers@google.com>
	<CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
	<CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
	<CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
	<CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
	<87r1fkizxl.fsf@disp2133>
	<CAK7LNAS8Fz_kcwqzJD834QrSuWkkorHm4OZoGUhYsbKvJV=fJQ@mail.gmail.com>
	<87v94vg7vi.fsf@disp2133>
	<CAK7LNASbegX=9yBDktuK5iXhhB=wNP_kbdh4dnJMXSmV=XwHOw@mail.gmail.com>
Date: Tue, 27 Jul 2021 13:46:07 -0500
In-Reply-To: <CAK7LNASbegX=9yBDktuK5iXhhB=wNP_kbdh4dnJMXSmV=XwHOw@mail.gmail.com>
	(Masahiro Yamada's message of "Wed, 28 Jul 2021 00:45:54 +0900")
Message-ID: <87lf5rfvdc.fsf@disp2133>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-XM-SPF: eid=1m8S68-004Ncs-Ff;;;mid=<87lf5rfvdc.fsf@disp2133>;;;hst=in02.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1+3wQ5mLUbVDzV6nXI3HOEjKRRseKbKxYY=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
	DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
	T_TooManySym_02,XMSubLong autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4905]
	*  0.7 XMSubLong Long Subject
	*  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
	* -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
	*      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
	*  0.0 T_TooManySym_01 4+ unique symbols in subject
	*  0.0 T_TooManySym_02 5+ unique symbols in subject
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1
X-Spam-Combo: ;Masahiro Yamada <masahiroy@kernel.org>
X-Spam-Relay-Country: 
X-Spam-Timing: total 747 ms - load_scoreonly_sql: 0.03 (0.0%),
	signal_user_changed: 11 (1.4%), b_tie_ro: 9 (1.3%), parse: 1.03 (0.1%),
	 extract_message_metadata: 17 (2.3%), get_uri_detail_list: 3.3 (0.4%),
	tests_pri_-1000: 24 (3.2%), tests_pri_-950: 1.18 (0.2%),
	tests_pri_-900: 1.02 (0.1%), tests_pri_-90: 241 (32.2%), check_bayes:
	239 (32.0%), b_tokenize: 12 (1.5%), b_tok_get_all: 11 (1.5%),
	b_comp_prob: 3.1 (0.4%), b_tok_touch_all: 210 (28.1%), b_finish: 0.90
	(0.1%), tests_pri_0: 439 (58.8%), check_dkim_signature: 0.58 (0.1%),
	check_dkim_adsp: 2.5 (0.3%), poll_dns_idle: 0.70 (0.1%), tests_pri_10:
	2.1 (0.3%), tests_pri_500: 7 (0.9%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for LLVM=1 LLVM_IAS=1
X-SA-Exim-Version: 4.2.1 (built Sat, 08 Feb 2020 21:53:50 +0000)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-Original-Sender: ebiederm@xmission.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ebiederm@xmission.com designates 166.70.13.232 as
 permitted sender) smtp.mailfrom=ebiederm@xmission.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=xmission.com
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

Masahiro Yamada <masahiroy@kernel.org> writes:

> On Tue, Jul 27, 2021 at 11:16 PM Eric W. Biederman
> <ebiederm@xmission.com> wrote:
>>
>> Masahiro Yamada <masahiroy@kernel.org> writes:
>>
>> > On Tue, Jul 27, 2021 at 5:27 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
>> >>
>> >> Masahiro Yamada <masahiroy@kernel.org> writes:
>> >>
>> >> > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
>> >> >>
>> >> >> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
>> >> >> <torvalds@linux-foundation.org> wrote:
>> >> >> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>> >> >> >
>> >> >> > We do most of the other heavy lifting in this area in Kconfig anyway,
>> >> >> > why not add that compiler choice?
>> >> >> >
>> >> >> > Obviously it would be gated by the tests to see which compilers are
>> >> >> > _installed_ (and that they are valid versions), so that it doesn't ask
>> >> >> > stupid things ("do you want gcc or clang" when only one of them is
>> >> >> > installed and/or viable).
>> >> >>
>> >> >> I don't see a good way of making Kconfig options both select the
>> >> >> compiler and defining variables based on the compiler, since that
>> >> >> would mean teaching Kconfig about re-evaluating all compiler
>> >> >> dependent settings whenever the first option changes.
>> >> >>
>> >> >> I do have another idea that I think would work though.
>> >> >>
>> >> >> > Hmm? So then any "LLVM=1" thing would be about the "make config"
>> >> >> > stage, not the actual build stage.
>> >> >> >
>> >> >> > (It has annoyed me for years that if you want to cross-compile, you
>> >> >> > first have to do "make ARCH=xyz config" and then remember to do "make
>> >> >> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
>> >> >> > never really cared).
>> >> >>
>> >> >> The best thing that I have come up with is a pre-configure step, where
>> >> >> an object tree gets seeded with a makefile fragment that gets included
>> >> >> for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
>> >> >> 'CC=' and possibly any other option that gets passed to 'make' as
>> >> >> a variable and has to exist before calling 'make *config'.
>> >> >
>> >> >
>> >> > There is no need to add a hook to include such makefile fragment(s).
>> >> >
>> >> > Quite opposite, you can put your Makefile (in a different filename)
>> >> > that includes the top Makefile.
>> >> >
>> >> >
>> >> > I think this is what people are already doing:
>> >> >
>> >> >
>> >> > GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
>> >> > in this order.
>> >> >
>> >> >
>> >> > So, you can put 'GNUmakefile' with your favorite setups.
>> >> >
>> >> >
>> >> > $ cat GNUmakefile
>> >> > ARCH=arm64
>> >> > CROSS_COMPILE=aarch64-linux-gnu-
>> >> > CC=clang
>> >> > include Makefile
>> >>
>> >> Very weird.
>> >>
>> >> I just tested this and it does not work.
>> >> I did this:
>> >>
>> >> $ cat GNUmakefile
>> >> ARCH = alpha
>> >> CROSS_COMPILE = $(arch-prefix alpha)
>> >> include Makefile
>> >>
>> >> In one of my build directories and the main makefile simply does not see
>> >> the value of ARCH or CROSS_COMPILE I set.  I have confirmed that my
>> >> GNUmakefile is being read, because everything breaks if I remove the
>> >> include line.
>> >>
>> >> Does anyone have any ideas?
>> >>
>> >> Something so we don't have to specify all of these variables on the make
>> >> command line would be nice.
>> >>
>> >> Eric
>> >
>> >
>> > Worked for me.
>> >
>> > Could you tell me the exact steps you did?
>> >
>> >
>> > This is my case:
>> >
>> > My kernel source tree is located at $HOME/ref/linux
>> > alpha tool chains are located at $HOME/tools/alpha-10.1.0/bin
>> >
>> >
>> >
>> > I tried a simple GNUmakefile with 3 lines.
>> >
>> > You can see 'make' is building the alpha kernel
>> >
>> >
>> > Please see below:
>>
>> Interesting.  That appears to work if I don't specify a build directory.
>> Once I specify a build directory with O= it does not work.
>>
>> When I am working on a change that affects multiple architectures
>> I really want a build directory that is not my source tree so I can
>> test small changes on multiple architectures without needing to rebuild
>> everything.
>>
>> Eric
>
>
> Ah, OK.
> When you specify O= option, Kbuild will
> invoke sub-make.
> So you need to add 'export' to the
> variables.
>
> Please see the following modified version.

Yes. That does seem to work and be simpler.

Is there any chance we can get the command that generates the Makefile
in the build directory to include variables like ARCH and CROSS_COMPILE
in the Makefile as well?  Just so they don't need to be set by hand to
the same value every time?

Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lf5rfvdc.fsf%40disp2133.
