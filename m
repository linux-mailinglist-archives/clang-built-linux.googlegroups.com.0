Return-Path: <clang-built-linux+bncBCALX3WVYQORBK5KQCEAMGQEDOMQUSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B25F3D784D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:16:13 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id bt7-20020a0569021367b02904ed415d9d84sf18777791ybb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 07:16:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627395372; cv=pass;
        d=google.com; s=arc-20160816;
        b=gn+zjcEc1B057VMKExvfsOo9hPAG+5rbFWJNg0UC5wtzu3buEIbEuIlCuZYnYn8oB6
         hWMiF0mPtkDqm+DtrT+AWHbR1qrvwM+V5+/IUYs4MMo9p8BRTzPZ9/C0AKi71kJjvylA
         V/pZclMu2BzqrtFClttUKkMem72dEwFhmg6ZNlhwYadppSAqAVmtBjN7L4RL2FqgwSPg
         tteQ5oaGeZRstMthQX/4qS0/DRIv2IJvViUH2nQWB/LRsa0lwOU3meGYDPhhz0siefzv
         UnqcSUg+4/tLlmZTvQHF7nIu32PkTKytcwo5f+DlXf/3uJVI6z4e3f+Wx587auQ/UqzP
         UOWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:user-agent
         :message-id:in-reply-to:date:references:cc:to:from:sender
         :dkim-signature;
        bh=8lU8v+h7tDbYjsIa7oZzAZ4AEiioyd7BEGzkrRENi9M=;
        b=Yg89P7Hugik24jncVrefa37ZJ5acXcfe+QqaQ4QiYoXdIRa4h2zgT0txNmCBGGUh0D
         gthJhzbaYxEprVdKXKXL/nhhAdk0jNBTZs8XpXHoexKh/xR8nt/2pIWGJOUv/duZRatu
         ap9DX/hTYlTUk67qL0Nu11GP2eKgtaA0Y+rwAIvKrhP+7SCQVLBEvXAOtziLjuy+yKmW
         k4bSuNyQgJV087nA6OXzeR96x71qkuimsOf662xF9aao/0wzY6TkGLpcB3EXBdqE6Jtr
         EcjF39CJeMa9FmMxNykW74+UbH19z8DxFoLNBPKN18RIKWaqy/9n9dQbugJH17+ibBXj
         EvLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) smtp.mailfrom=ebiederm@xmission.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xmission.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:references:date:in-reply-to:message-id:user-agent
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8lU8v+h7tDbYjsIa7oZzAZ4AEiioyd7BEGzkrRENi9M=;
        b=n4kKc0hEUypt8Jq2rf/oUyTvHVc/URbogL28G36tzWN6Xe01KS6QEpe4Ak3ky2aP+u
         rc04cZC1rG+b5mwGG4ooAMFuCtLV/LXGcRlKK0v0hIPHfENoCgrQsC2i91BIO2DIZOwt
         BzdxGHqI0EXZVugvp4lKRh/sJEqALWFmt7UZve/VCOxka8Gx6B0/QYWBkYTjjZ7SBlzG
         QRogFngyhOwg7dd8DKFOZv6EAs7MyUUMtVmMtt3XEs7Dlo2iQUGhMxs3w5SDei/4WRx/
         zmjP0rkWnkscfOQ23eX/mW5b6VxpXsLIon/bVXgGAJxu175xKmyuwClYnAEEQxx2ejiB
         jLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:references:date:in-reply-to
         :message-id:user-agent:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lU8v+h7tDbYjsIa7oZzAZ4AEiioyd7BEGzkrRENi9M=;
        b=sFA40k0EaRNlkp3igUo3tQ/p6nJX8120QyZxQ1FNMK4G23PH9CJgI+ReP0Ei38HBUM
         XKgsZo/dSlT/sN/qdwFraEjPzeeMI4Pz7luaABX/qsDqYO792lToO+JhPtGwTIB6qxB1
         WeP/8HOPgJo31qWK2T++Y9ZaHavEJKH7Pw/KP2/fHGkJjWWEoSdGhByvnhxLpXCx7yGj
         zoTRmhL2dWub+vgncBcYihKTFIQiWgQcfZcqzjKRHngWP6YtEJI4TLdsCcTnFacnGf5E
         setLSodvtbzMoiKwxLh5QFe7noIDdwCPNi/njDy/U2BjW7fSx+oIhCxskapVOkOq8oWQ
         4KOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iOdckeZbQwGmtOFcZJNoqwcUFIQq7Cts+6y4XE0pXjHiZI8GM
	o7OFHRBA38h+PKtdtWOKHxI=
X-Google-Smtp-Source: ABdhPJwqYCL1fV+0wH3zB56/+9PUwUTG2PaRDuExvHzsqKXyhvmX2keDOmD3PzBGVoON2oPyU4DSAQ==
X-Received: by 2002:a25:be8a:: with SMTP id i10mr31179337ybk.176.1627395372081;
        Tue, 27 Jul 2021 07:16:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls1970548ybc.7.gmail; Tue, 27 Jul
 2021 07:16:11 -0700 (PDT)
X-Received: by 2002:a25:b8c6:: with SMTP id g6mr30963046ybm.300.1627395371577;
        Tue, 27 Jul 2021 07:16:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627395371; cv=none;
        d=google.com; s=arc-20160816;
        b=nLuFIAH+AvxvXh8FWiY+fMq31B4ntjG489reavFN06Ngftr0tkFkdL35635VpCDWm+
         Wsj1CWplTHeZVJS63f1vEFEfiakmkQcakGla5M4lHTyL0Notq/5nQ2vFYMWg9/RaYAD2
         1ow1HVsAwZ//XLDwSkv1ApHy9Otct9fDZQQaRkAxhCSrdwNEDpGQ5gMZg2ROPLvajJIN
         xXdRE8skXp5x5Lp3z0q2G3tgW+UslGtBG7GR1rXI2oGRyEzJrMZsD4jyYAFygISejmaE
         woJwm49CMSypKpeQTX+hRCmzBp5sYU2hQFO4EKQ6GTSfqOSsXFgCZ5j1rGIH4Jlm6eLQ
         G5bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:mime-version:user-agent:message-id:in-reply-to:date
         :references:cc:to:from;
        bh=lxwqF7I0MSNhdbfsOY53r6e4Ckv2xJDwdW0CikEScQ8=;
        b=tgD0NRVVul22LeQpP+PsV2SBHVUpC9YiXhUX93ehEawV9sDn3AONzE8/WDvm6WS2b8
         Ro5pa6g7KW/AUyOdM+ngSzkZ7lksbWaYH4OMFtG1LK0RKj0R6JfOkJHxQwmYEQNqhihp
         +iXtHYuotn3tB82P2oA2Pjvj5yb8Hn4kNMeFytGAmWM5w4BHBK40SwUfNXUFpu9W/Yqa
         GgZFEWgiYaMRuJtvYxHlT0w3y7W+Ha475Uy2A5SEVuPpucRQEn8mOQ859m7w2Jj18w1B
         Wnvl4FsunQopjaDiZE/xaMh7tWhDDsL4lqyyik2AJVBRbXQU57y5zg2V0rww0eKcjCgt
         EXTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) smtp.mailfrom=ebiederm@xmission.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xmission.com
Received: from out03.mta.xmission.com (out03.mta.xmission.com. [166.70.13.233])
        by gmr-mx.google.com with ESMTPS id t3si154500ybu.3.2021.07.27.07.16.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 07:16:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) client-ip=166.70.13.233;
Received: from in02.mta.xmission.com ([166.70.13.52]:49264)
	by out03.mta.xmission.com with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <ebiederm@xmission.com>)
	id 1m8NsP-00DgF3-2x; Tue, 27 Jul 2021 08:16:09 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]:48960 helo=email.xmission.com)
	by in02.mta.xmission.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <ebiederm@xmission.com>)
	id 1m8NsN-003YiR-R6; Tue, 27 Jul 2021 08:16:08 -0600
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
Date: Tue, 27 Jul 2021 09:16:01 -0500
In-Reply-To: <CAK7LNAS8Fz_kcwqzJD834QrSuWkkorHm4OZoGUhYsbKvJV=fJQ@mail.gmail.com>
	(Masahiro Yamada's message of "Tue, 27 Jul 2021 19:10:02 +0900")
Message-ID: <87v94vg7vi.fsf@disp2133>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-XM-SPF: eid=1m8NsN-003YiR-R6;;;mid=<87v94vg7vi.fsf@disp2133>;;;hst=in02.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1/A0yNJecA7Q20Vto//jCC4YwhQhHttrn4=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa05.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
	DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
	T_TooManySym_02,XMSubLong autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4988]
	*  0.7 XMSubLong Long Subject
	*  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
	* -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
	*      [sa05 1397; Body=1 Fuz1=1 Fuz2=1]
	*  0.0 T_TooManySym_02 5+ unique symbols in subject
	*  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa05 1397; Body=1 Fuz1=1 Fuz2=1
X-Spam-Combo: ;Masahiro Yamada <masahiroy@kernel.org>
X-Spam-Relay-Country: 
X-Spam-Timing: total 627 ms - load_scoreonly_sql: 0.12 (0.0%),
	signal_user_changed: 13 (2.0%), b_tie_ro: 11 (1.7%), parse: 1.94
	(0.3%), extract_message_metadata: 26 (4.2%), get_uri_detail_list: 4.8
	(0.8%), tests_pri_-1000: 22 (3.5%), tests_pri_-950: 1.67 (0.3%),
	tests_pri_-900: 1.40 (0.2%), tests_pri_-90: 155 (24.7%), check_bayes:
	137 (21.8%), b_tokenize: 13 (2.1%), b_tok_get_all: 8 (1.3%),
	b_comp_prob: 3.7 (0.6%), b_tok_touch_all: 108 (17.2%), b_finish: 1.02
	(0.2%), tests_pri_0: 382 (61.0%), check_dkim_signature: 0.80 (0.1%),
	check_dkim_adsp: 3.2 (0.5%), poll_dns_idle: 1.01 (0.2%), tests_pri_10:
	3.4 (0.5%), tests_pri_500: 15 (2.4%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for LLVM=1 LLVM_IAS=1
X-SA-Exim-Version: 4.2.1 (built Sat, 08 Feb 2020 21:53:50 +0000)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-Original-Sender: ebiederm@xmission.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as
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

> On Tue, Jul 27, 2021 at 5:27 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
>>
>> Masahiro Yamada <masahiroy@kernel.org> writes:
>>
>> > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
>> >>
>> >> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
>> >> <torvalds@linux-foundation.org> wrote:
>> >> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>> >> >
>> >> > We do most of the other heavy lifting in this area in Kconfig anyway,
>> >> > why not add that compiler choice?
>> >> >
>> >> > Obviously it would be gated by the tests to see which compilers are
>> >> > _installed_ (and that they are valid versions), so that it doesn't ask
>> >> > stupid things ("do you want gcc or clang" when only one of them is
>> >> > installed and/or viable).
>> >>
>> >> I don't see a good way of making Kconfig options both select the
>> >> compiler and defining variables based on the compiler, since that
>> >> would mean teaching Kconfig about re-evaluating all compiler
>> >> dependent settings whenever the first option changes.
>> >>
>> >> I do have another idea that I think would work though.
>> >>
>> >> > Hmm? So then any "LLVM=1" thing would be about the "make config"
>> >> > stage, not the actual build stage.
>> >> >
>> >> > (It has annoyed me for years that if you want to cross-compile, you
>> >> > first have to do "make ARCH=xyz config" and then remember to do "make
>> >> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
>> >> > never really cared).
>> >>
>> >> The best thing that I have come up with is a pre-configure step, where
>> >> an object tree gets seeded with a makefile fragment that gets included
>> >> for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
>> >> 'CC=' and possibly any other option that gets passed to 'make' as
>> >> a variable and has to exist before calling 'make *config'.
>> >
>> >
>> > There is no need to add a hook to include such makefile fragment(s).
>> >
>> > Quite opposite, you can put your Makefile (in a different filename)
>> > that includes the top Makefile.
>> >
>> >
>> > I think this is what people are already doing:
>> >
>> >
>> > GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
>> > in this order.
>> >
>> >
>> > So, you can put 'GNUmakefile' with your favorite setups.
>> >
>> >
>> > $ cat GNUmakefile
>> > ARCH=arm64
>> > CROSS_COMPILE=aarch64-linux-gnu-
>> > CC=clang
>> > include Makefile
>>
>> Very weird.
>>
>> I just tested this and it does not work.
>> I did this:
>>
>> $ cat GNUmakefile
>> ARCH = alpha
>> CROSS_COMPILE = $(arch-prefix alpha)
>> include Makefile
>>
>> In one of my build directories and the main makefile simply does not see
>> the value of ARCH or CROSS_COMPILE I set.  I have confirmed that my
>> GNUmakefile is being read, because everything breaks if I remove the
>> include line.
>>
>> Does anyone have any ideas?
>>
>> Something so we don't have to specify all of these variables on the make
>> command line would be nice.
>>
>> Eric
>
>
> Worked for me.
>
> Could you tell me the exact steps you did?
>
>
> This is my case:
>
> My kernel source tree is located at $HOME/ref/linux
> alpha tool chains are located at $HOME/tools/alpha-10.1.0/bin
>
>
>
> I tried a simple GNUmakefile with 3 lines.
>
> You can see 'make' is building the alpha kernel
>
>
> Please see below:

Interesting.  That appears to work if I don't specify a build directory.
Once I specify a build directory with O= it does not work.

When I am working on a change that affects multiple architectures
I really want a build directory that is not my source tree so I can
test small changes on multiple architectures without needing to rebuild
everything.

Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87v94vg7vi.fsf%40disp2133.
