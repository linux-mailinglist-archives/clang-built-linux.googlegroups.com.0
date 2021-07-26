Return-Path: <clang-built-linux+bncBCALX3WVYQORBIVV7SDQMGQEV2WOQEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 418053D6822
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:27:15 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id h9-20020a6bfb090000b02904e5ab8bdc6csf9388771iog.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:27:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627331234; cv=pass;
        d=google.com; s=arc-20160816;
        b=WaLe9YR6wCqkNTr1/wRsef4w9vQjedMCMeYtMa6hb/C6dh/ubw463lYfhH99FRFgjd
         f3PiFXGhDlr80F6x7FrHSA0GWArkuAMp2yI5pEOY7G1lwLzGKYMx8mG83gIGLMOnVghz
         BPs66qBNRKjhUHPD9uA3rdBLvdsFiAbYjZCPteBE8yU0HyPX/Da1nERfbulY32cAAvX9
         qnz5jK0KRB4QfMfnKKT1b6ynXOquMEUpUh91l7qgFstWUbOaNRFwQKb7N0OK2dC7mQw9
         rdPHtk9txzH9btZqEyq7Ru0hdX0M4/lMRfzrW3gPD5ZKDbtdAH4VkSQ54SdTWdlT1mBm
         aibQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:user-agent
         :message-id:in-reply-to:date:references:cc:to:from:sender
         :dkim-signature;
        bh=uvwlq/fmy+5vaRHvw3kjwDH3ctSzsL2RJhRUUEiYZBU=;
        b=0YVg0wAG6WN82mmqXXV+SeDmN7DcJ/TdpB92uggcQOVic/xJZ420hkYk2KTjhz97/2
         QU2r2gyzbzkfFFzbaqigcgqndxLTyRHH1wJII6NToBeC1MZC//l7hHl0NaPkqQKSGrgr
         wE3yBKGpWxgFocttZt8e38CpspNXtCBeFI32JgWl1n9jtElbvcEbptGSYd7i3v1NiqJd
         QQ8I/hdIFFrq++ZFSmGnRHRhh8eqFsPO2dLT/9UHWKUsyW+LL6OSJR2DFeiOg3V7HZ5s
         M74/uot+GoazexfaM9tmPa9jpxErrdGUY69rQqhUWYKVonsi74x9IVJKIK1hhIrTrNdN
         CtSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) smtp.mailfrom=ebiederm@xmission.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xmission.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:references:date:in-reply-to:message-id:user-agent
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uvwlq/fmy+5vaRHvw3kjwDH3ctSzsL2RJhRUUEiYZBU=;
        b=ErDmtgaIrU8v1LRQR4SGh/At2LO9MDh0gv/6ikM4qK1RGgQqdKfLIcPpk06wouyy/w
         juLXbKQI8xn3fyPABAnrxED1dNAPkXCrPy9nCKr/JlljTYgPQMW2lzmFbfgtXJW1bTvm
         2eJ8addvuiWXQOo4SvRXA2kMLdkJOBQfl/37Dz1KR6gPk0dA81EGfg5I6PfsKleYgN6T
         9cWfVaYSBUL8Xud0haUpfWLaJselyy5+OHyDzVzwg2Dt1c/SYzfYtg7OOw7DpWkdKzt4
         8mI1RaxmBj8kv3R+E02lUqYKhMjxBxOWzrKBiwZ3qWfhdDgpbW2Byy9EFnRh/yQ/DvTm
         2DwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:references:date:in-reply-to
         :message-id:user-agent:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uvwlq/fmy+5vaRHvw3kjwDH3ctSzsL2RJhRUUEiYZBU=;
        b=I9pztzSW5JBcb0isyRCXMx8cEzeCEdP8RQQ+QuBa/o/kYIyrfydQ3L+Q92rkR4uHrM
         9i90wZOZBwj7853warwBSYlGMksq7WB866yF4sKTSSDVcBngAFH4LUvJgOwvrCUQNClK
         TU4nauNIbUpjEK/0borD1Oy1MTR4vPpnYDRHJRFoKbdC4a9kjFED2FbHvKQq2Kd7CoOD
         Eu8UeOBazN681oZcWKZs30pWjlR0frMGYB3lkMv9WmY4kY2mals4Dj7iwp+Ci6OYW6P5
         6tL6o7pJU2ZxA1uJwseM5Vl1bcaSDAByM4IE1BJ6jQEZdSLHJ/V/5ckNiY58Z6p6U+vf
         eHuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322pwoB4uoUrhl+LL5mZ5ctBd21qJvsvCqqg1/r0QfZiqZzfb05
	BY4s2mdQIGkJAADITGJ30Uc=
X-Google-Smtp-Source: ABdhPJw05BU25SXmIgyB8Qt8J171pAKI/sZClsA5r44Q/Ag9IjtBBv25HxcJsdWNz9uxi3vKVr0X3A==
X-Received: by 2002:a02:9508:: with SMTP id y8mr18147353jah.28.1627331234124;
        Mon, 26 Jul 2021 13:27:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2096:: with SMTP id a22ls3897430ioa.10.gmail; Mon,
 26 Jul 2021 13:27:13 -0700 (PDT)
X-Received: by 2002:a6b:2bd4:: with SMTP id r203mr11510488ior.157.1627331233352;
        Mon, 26 Jul 2021 13:27:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627331233; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4omrWZx6llE4bogEmBDl0cBTahOQVIiBnDkUucvzwIataqr562kjqJJX/bvyL9Aqs
         OW1is5l/nlltFTyPl9TSPB46vcT5XKQJdsRTUZU6NDxZA0q3ddxKBOlXUmzWJXN0KwmK
         QkUt5yn3UCvfhPu/zrtfUYK2U5P1Qpjwc2YlhYuZXYqg/fGO98sFWCGVdyB4Croo4Xy0
         MQkInCx+mGDZzDFiRVK5rNEsl1T5bTxXZQ5PmEiJAt69dHA1BCBLh+VT9Yx+uShk/U6l
         01qpL6P2hIta2hqUZW2O4qaHlzjS+sEPqLClAQpthTn+jXnQtle3+QJWOLEp4QrdakQM
         BFxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:mime-version:user-agent:message-id:in-reply-to:date
         :references:cc:to:from;
        bh=WqoOHQ94++C19HRUB7gyxcrxWmOLpQTpiYiR51+dknQ=;
        b=QXil7Y7dUZfMTEGQ4IrguUoEOeAGLFQzYsLzzv4AZ333dznqbQ90m0OY5FgAsmQvrl
         sdNeOYXY3PSXqyODPLUbynrGiEo55LiAaBNWr6AHKYdd7OjpbmAqpVW0++ZtsZyk43na
         wGT49IGMBYeUskt7UZm0K9YNHvyHNckXkAVJz5A+2/CQyLVT4rcFQWvL6lGa4irEJRIC
         4QR+bKYZK+XpHAAMonAJ6WeyXMnzkx/X3u7M9RtyK0PEp6QgFIx7W9LAZw4U5d7qgMiA
         vctlKaFHLXQ+ywPFIMibLzpCZuO+zt+qjjYucth5zHU2QvTSi1IUCqyaUN5JjXEykpfC
         fs4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) smtp.mailfrom=ebiederm@xmission.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xmission.com
Received: from out03.mta.xmission.com (out03.mta.xmission.com. [166.70.13.233])
        by gmr-mx.google.com with ESMTPS id w12si42968ilu.1.2021.07.26.13.27.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 13:27:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) client-ip=166.70.13.233;
Received: from in02.mta.xmission.com ([166.70.13.52]:55256)
	by out03.mta.xmission.com with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <ebiederm@xmission.com>)
	id 1m87Bu-00C6VG-5e; Mon, 26 Jul 2021 14:27:10 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]:43626 helo=email.xmission.com)
	by in02.mta.xmission.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <ebiederm@xmission.com>)
	id 1m87Bt-001UWD-5O; Mon, 26 Jul 2021 14:27:09 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>,  Linus Torvalds <torvalds@linux-foundation.org>,  Nick Desaulniers <ndesaulniers@google.com>,  Miguel Ojeda <ojeda@kernel.org>,  Fangrui Song <maskray@google.com>,  Michal Marek <michal.lkml@markovi.net>,  Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,  Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,  clang-built-linux <clang-built-linux@googlegroups.com>,  Geert Uytterhoeven <geert@linux-m68k.org>,  Christoph Hellwig <hch@infradead.org>,  Nathan Chancellor <nathan@kernel.org>
References: <20210708232522.3118208-1-ndesaulniers@google.com>
	<20210708232522.3118208-3-ndesaulniers@google.com>
	<CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
	<CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
	<CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
	<CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
Date: Mon, 26 Jul 2021 15:27:02 -0500
In-Reply-To: <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
	(Masahiro Yamada's message of "Wed, 21 Jul 2021 13:04:16 +0900")
Message-ID: <87r1fkizxl.fsf@disp2133>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-XM-SPF: eid=1m87Bt-001UWD-5O;;;mid=<87r1fkizxl.fsf@disp2133>;;;hst=in02.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX18tWp/rseM+A6K5maWqOboB6DPgUpqRyvE=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa03.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
	DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
	T_TooManySym_02,XMSubLong autolearn=disabled version=3.4.2
X-Spam-Virus: No
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4816]
	*  0.7 XMSubLong Long Subject
	*  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
	* -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
	*      [sa03 1397; Body=1 Fuz1=1 Fuz2=1]
	*  0.0 T_TooManySym_01 4+ unique symbols in subject
	*  0.0 T_TooManySym_02 5+ unique symbols in subject
X-Spam-DCC: XMission; sa03 1397; Body=1 Fuz1=1 Fuz2=1
X-Spam-Combo: ;Masahiro Yamada <masahiroy@kernel.org>
X-Spam-Relay-Country: 
X-Spam-Timing: total 426 ms - load_scoreonly_sql: 0.05 (0.0%),
	signal_user_changed: 3.8 (0.9%), b_tie_ro: 2.6 (0.6%), parse: 0.71
	(0.2%), extract_message_metadata: 9 (2.0%), get_uri_detail_list: 1.60
	(0.4%), tests_pri_-1000: 4.2 (1.0%), tests_pri_-950: 1.01 (0.2%),
	tests_pri_-900: 0.82 (0.2%), tests_pri_-90: 59 (13.9%), check_bayes:
	58 (13.7%), b_tokenize: 7 (1.6%), b_tok_get_all: 7 (1.5%),
	b_comp_prob: 1.85 (0.4%), b_tok_touch_all: 41 (9.6%), b_finish: 0.57
	(0.1%), tests_pri_0: 337 (79.1%), check_dkim_signature: 0.41 (0.1%),
	check_dkim_adsp: 9 (2.0%), poll_dns_idle: 0.15 (0.0%), tests_pri_10:
	1.80 (0.4%), tests_pri_500: 6 (1.5%), rewrite_mail: 0.00 (0.0%)
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

> On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
>>
>> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
>> <torvalds@linux-foundation.org> wrote:
>> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>> >
>> > We do most of the other heavy lifting in this area in Kconfig anyway,
>> > why not add that compiler choice?
>> >
>> > Obviously it would be gated by the tests to see which compilers are
>> > _installed_ (and that they are valid versions), so that it doesn't ask
>> > stupid things ("do you want gcc or clang" when only one of them is
>> > installed and/or viable).
>>
>> I don't see a good way of making Kconfig options both select the
>> compiler and defining variables based on the compiler, since that
>> would mean teaching Kconfig about re-evaluating all compiler
>> dependent settings whenever the first option changes.
>>
>> I do have another idea that I think would work though.
>>
>> > Hmm? So then any "LLVM=1" thing would be about the "make config"
>> > stage, not the actual build stage.
>> >
>> > (It has annoyed me for years that if you want to cross-compile, you
>> > first have to do "make ARCH=xyz config" and then remember to do "make
>> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
>> > never really cared).
>>
>> The best thing that I have come up with is a pre-configure step, where
>> an object tree gets seeded with a makefile fragment that gets included
>> for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
>> 'CC=' and possibly any other option that gets passed to 'make' as
>> a variable and has to exist before calling 'make *config'.
>
>
> There is no need to add a hook to include such makefile fragment(s).
>
> Quite opposite, you can put your Makefile (in a different filename)
> that includes the top Makefile.
>
>
> I think this is what people are already doing:
>
>
> GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
> in this order.
>
>
> So, you can put 'GNUmakefile' with your favorite setups.
>
>
> $ cat GNUmakefile
> ARCH=arm64
> CROSS_COMPILE=aarch64-linux-gnu-
> CC=clang
> include Makefile

Very weird.

I just tested this and it does not work.
I did this:

$ cat GNUmakefile
ARCH = alpha
CROSS_COMPILE = $(arch-prefix alpha)
include Makefile

In one of my build directories and the main makefile simply does not see
the value of ARCH or CROSS_COMPILE I set.  I have confirmed that my
GNUmakefile is being read, because everything breaks if I remove the
include line.

Does anyone have any ideas?

Something so we don't have to specify all of these variables on the make
command line would be nice.

Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1fkizxl.fsf%40disp2133.
