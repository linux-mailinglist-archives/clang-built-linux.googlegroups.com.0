Return-Path: <clang-built-linux+bncBDRODQUCTUORBI5F3DUQKGQEAFLZ4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA5870A09
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 21:46:44 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id a198sf15545668oii.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 12:46:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563824803; cv=pass;
        d=google.com; s=arc-20160816;
        b=doe03hia7e9h/0SHD3Q0GmU+smlLeNPeWZx+Vw59eQ53/eTliGiOqpeFfAiL13wL4I
         iLQM6EjCpye3KgptCj3N3R7szcmErpgaRZTIA3Dwt98ReDS2wMuCZI/ovJnrkpCvD1O6
         1x4p7LG49W088X6xf5Z5kExwfJ7N6LoQ6+Ptei5dsJbNUeZi4JRi/66PtYIU3PrxRMyy
         j2lipOGwYLW1t4x8fu3ebnWitsdtOEbrjIB8LQ0fnNVUyOFDkoTJeITWQOHwVwmr9wvF
         PgtlVxdCIx9wjhVjSMo0LnqbmXfrSO4twF1nTlYPe8BWxAaePEoGw7tyjXBJSiBEhjGh
         GpjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-version:dlp-product
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=ePiebqRN/jAq969Ud5WAj1WNip+vQTQ7M5darhO9T1Y=;
        b=f1YtpMscaQmHR+OI+yPdcO6l+tGJ91/0fpmaPQ+w4giMKntmmzMkqQ9+zCcm0qBk6d
         BRl5kbdkjbxjWk5Wl/f5Fp5eXw+T477i8C1UHU/2eZExNmWhmMH91XZlhGmCsPaP0M09
         8jzNqXhmvLxbVbH9Hy2mu9+N8Aqb8U0kX4HgkAb/pm3kuQypzQVIlYrKQNtjLBbBV76M
         IA8RHtLH+R+Lha0lkgZig8eYonjZIb+t6dJZaAW5iB37zI5hCIfBbY/ljTPztCBkaFE+
         I6yWfEdd9HWtOVkE25coawQfCvsno1kXfX1oF25nkGjdQTNU2PraP2TJCUSJGBcDVWqJ
         TdwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of craig.topper@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=craig.topper@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ePiebqRN/jAq969Ud5WAj1WNip+vQTQ7M5darhO9T1Y=;
        b=lfGC8q9Sw1+SfW4xM3+DToqX6HhXEo9hXlgcO+NU5JcODw6cQFfbAaudKRGnOsAWnc
         S1efpvppwZL7o9yfAecTQ9WLruj0V8GZpS4cUIyjAEIVq4jIYYe2IT2AD3M44wQXBHiC
         eyVZqj4fxztFwyUftGr8I+o0yrVdApRw4I9Apn5Lw/hMTIwm4v43r80woarj5iOSS0kI
         jnmZQ2BdYff7HPMcRwzlnTSWToZyHp3px2SRAA5yBbiuABFQnPCtCQSue7QXLTspTPvb
         VH7mGUCIoBETGQaXdxqF9ht8liuIPtbCLSISQwzuK0lT42kaSM5WkOhYzZr8Bqo99sCU
         3yyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ePiebqRN/jAq969Ud5WAj1WNip+vQTQ7M5darhO9T1Y=;
        b=rCH/mHJl/VbboC9Ubph7YwvwtHCKRD/jnrwSYU6913GOH1bKbPh0dD/JUBJwRrP8/R
         qAIs4RQlM1aXhNiSjPZ1hnICsd3B52A43fRs9LF9QLWfAsdbgdkBSIeJCuoPW5QFgbte
         4wgugOvpPunOQ0mVVr/xQ6FFrcmVd4gSdxTxnsYy2eE5tYcRQSkIOQ+CUb06Z1Ek2gAN
         l370Undv28MDAToFURdj6HTh2WjfIckSZWPjB+qtoYhMSSwHIJUbePYWaxJqS614/Sol
         TEwmp+R7x0l+v36t9bcZk6qv74z5UXtFeyo8KUJwGCFJEHpxJoP58PwI5oAfTLIimUiK
         6Dkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXAT2tNXrV9Bv7xi0Nc0KTOAlcz9HUFh0IIdeSb/sn59Wdtj63m
	qhJh0vMvt2HT17XGw8gXNXc=
X-Google-Smtp-Source: APXvYqxCplEekA14o6DUQUX0OO8I+p3qTI2Dhjec7mtpiuunS+uQtNx5UN/x7L19eMwtNrv9eemCOw==
X-Received: by 2002:aca:4c14:: with SMTP id z20mr34234660oia.121.1563824803497;
        Mon, 22 Jul 2019 12:46:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:47d2:: with SMTP id u201ls5208454oia.2.gmail; Mon, 22
 Jul 2019 12:46:43 -0700 (PDT)
X-Received: by 2002:a05:6808:b22:: with SMTP id t2mr33945424oij.59.1563824803132;
        Mon, 22 Jul 2019 12:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563824803; cv=none;
        d=google.com; s=arc-20160816;
        b=AoCyUEygaK59YWtAafFejnWuyrMw4k1R4D1YBOJL7JoSoIzEiTmRZu0X7+a02NDH+U
         uHMLsn1MKcEgk/zVJNzq+gkzo9p9vyu0b73lB5tW56E2CVOn2X2KUoQUd09A7PTj8W9a
         aVNN4M4+k4jjxIod/cMKK+tCOzwlZH9dSn8DLRCfxiRANBC+w1gvCrQ3z/Zdx6gUuY8C
         G7zMHrT3KiZuvvlthopvJM0kt5eNyH3dqyVB8ASwUgOdgEmxEtkyHTxZG/nyu81JEzcL
         2nBvgonBfGt8URNIWYMW4+Lf1Yi2moI342D2lg4CIsYGIKbdk/TyROnLB2TwfWPYxonx
         DEzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=XLnODzohP8UYafPGgcnx2Xmc7H4DBHM5mzVYrZwmmVU=;
        b=dzSBOmD6Snk1S6pFyeF/MtYdpBpIp3XmdLA2hnnL5B00TGV8E+HI3gUuDuJn1M3XzM
         MBOzdbGo8BKYiL0daA4bp7pNYBHnWOnzpEAsylLxBkp7TfShZ57S2t5kFnv0keZQrljl
         6C9uX56hACj9wzwLMaWnNRFsdkuXrcdMceyjW+vP9ov7nwd2EIPQaiSH2VU97vy1fI07
         jUCQ28p1WpTY1Z+tkvbd3bJ62G7vcTBrzV29Knt/E4YeQHTATicZdXWmQN61mL4FekdN
         /+NTnOWKAHXqk0+b2OvtHJWdoVBfoA7R7Iu/0NeDOmW5iMC0CpMF5/I652uuMDd3cl+l
         6R5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of craig.topper@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=craig.topper@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id p6si2049070otk.5.2019.07.22.12.46.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 12:46:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of craig.topper@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Jul 2019 12:46:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; 
   d="scan'208";a="169344749"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
  by fmsmga008.fm.intel.com with ESMTP; 22 Jul 2019 12:46:41 -0700
Received: from orsmsx114.amr.corp.intel.com ([169.254.8.96]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.186]) with mapi id 14.03.0439.000;
 Mon, 22 Jul 2019 12:46:41 -0700
From: "Topper, Craig" <craig.topper@intel.com>
To: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>
CC: Josh Poimboeuf <jpoimboe@redhat.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	"Simon Pilgrim" <llvm-dev@redking.me.uk>
Subject: RE: warning: objtool: fn1 uses BP as a scratch register
Thread-Topic: warning: objtool: fn1 uses BP as a scratch register
Thread-Index: AQHVPmLLC1eGCWucqkeyNwv3lWarDKbSzSgAgAQuO7A=
Date: Mon, 22 Jul 2019 19:46:40 +0000
Message-ID: <A7C736AD528C0C49B483E1E9E462D1A4969999C8@ORSMSX114.amr.corp.intel.com>
References: <CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA@mail.gmail.com>
 <CAKwvOdmoD1wVFLdWRXTA=c-p4oc6HDxsfhXq5wQpD-8oFUfNNQ@mail.gmail.com>
 <20190719183125.2tuhcch2rtanxvyn@treble>
 <CAK8P3a1hxEAnuqt=ajUf4ETCOY9ckEEVZVrG1c+SV=bn2_Ga-Q@mail.gmail.com>
 <CAKwvOd=jc06YyF2YsAfHWCR9qtB8oOeR5oQMpJe69TTfG3s2RA@mail.gmail.com>
 <CAK8P3a1m9VwQe4M0HVChjpPNfG4BSDXa-Vo1_ceCV1pHxeAyag@mail.gmail.com>
In-Reply-To: <CAK8P3a1m9VwQe4M0HVChjpPNfG4BSDXa-Vo1_ceCV1pHxeAyag@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDg1ZGFlZDYtMDMyMi00MDRiLTg3MGYtOTE0ZmM0YzFkNGI2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNTdJeW9ocmxYVXp6YUQ0WVZ5eVd4bDhHMlVcL2lyNVo3cFpGSDllUVpNejNGZmNoV0cwcXJMNVZVWVF4eDZpVloifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: craig.topper@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of craig.topper@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=craig.topper@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

The framepointer thing may have been fixed by this  https://reviews.llvm.or=
g/D64294=20

-----Original Message-----
From: Arnd Bergmann <arnd@arndb.de>=20
Sent: Friday, July 19, 2019 12:44 PM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>; clang-built-linux <clang-built-li=
nux@googlegroups.com>; Linux Kernel Mailing List <linux-kernel@vger.kernel.=
org>; Peter Zijlstra <peterz@infradead.org>; Topper, Craig <craig.topper@in=
tel.com>; Simon Pilgrim <llvm-dev@redking.me.uk>
Subject: Re: warning: objtool: fn1 uses BP as a scratch register

On Fri, Jul 19, 2019 at 8:50 PM 'Nick Desaulniers' via Clang Built Linux <c=
lang-built-linux@googlegroups.com> wrote:
> On Fri, Jul 19, 2019 at 11:44 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Fri, Jul 19, 2019 at 8:31 PM Josh Poimboeuf <jpoimboe@redhat.com> wr=
ote:
> > Actually the reproducer may be wrong. I reduced the test case using=20
> > 9.0.0-svn363902-1~exp1+0~20190620001509.2315~1.gbp76e756,
> > and this contains a link
> >
> >          testl %ebp, %ebp
> >
> > I get the same thing with clang-8, but godbolt.org shows it only=20
> > with clang-8 (see https://godbolt.org/z/g1lZO0) , not with trunk.
>
> (Sorry for sending a blank email just now)
> + Craig and Simon, in case they recall this being a recent fix in
> LLVM's x86 backend.
> Sounds like this is fixing in upstream LLVM.  Guessing this could=20
> result in improper unwinding w/ clang-8, but that's kind of irrelevant=20
> for x86 as there's no asm goto (though we don't need CONFIG_JUMP_LABEL=20
> in LTS branches :P)

Maybe you can try the attached .config file with a more recent clang build.=
 This showed a few hundred warnings like this one for me, so if it was not =
a bugfix but a random change in clang-9 that changed my reproducer.

Ignoring the 'uses BP as a scratch' warnings and the reiserfs 'unreachable =
instruction' ones, this is what else I got with today's
linux-next:

arch/x86/events/intel/core.o: warning: objtool:
intel_pmu_nhm_workaround()+0x103: unreachable instruction
arch/x86/ia32/ia32_signal.o: warning: objtool:
ia32_setup_rt_frame()+0x151: call to memset() with UACCESS enabled
arch/x86/kernel/cpu/mtrr/generic.o: warning: objtool:
get_fixed_ranges()+0x144: unreachable instruction
arch/x86/kernel/process.o: warning: objtool: get_tsc_mode()+0x20: call with=
out frame pointer save/setup
arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1a0:
call to memset() with UACCESS enabled
arch/x86/kernel/signal.o: warning: objtool:
x32_setup_rt_frame()+0x1da: call to memset() with UACCESS enabled
arch/x86/kernel/tsc.o: warning: objtool: sched_clock()+0x0: call without fr=
ame pointer save/setup
arch/x86/mm/fault.o: warning: objtool: do_user_addr_fault()+0x53:
unreachable instruction
drivers/ata/sata_dwc_460ex.o: warning: objtool:
sata_dwc_bmdma_start_by_tag()+0x259: can't find switch jump table
drivers/gpu/drm/amd/amdgpu/atom.o: warning: objtool: atom_op_move() falls t=
hrough to next function atom_op_and()
drivers/gpu/drm/radeon/atom.o: warning: objtool: atom_op_move()+0xce:
sibling call from callable instruction with modified stack frame
drivers/gpu/drm/radeon/atom.o: warning: objtool: atom_op_move() falls throu=
gh to next function atom_op_and() modified stack frame
drivers/gpu/drm/radeon/evergreen_cs.o: warning: objtool:
evergreen_cs_parse()+0xbcf: sibling call from callable instruction with mod=
ified stack frame
drivers/gpu/drm/radeon/evergreen_cs.o: warning: objtool:
evergreen_cs_parse() falls through to next function
evergreen_dma_cs_parse()
drivers/hwmon/pmbus/adm1275.o: warning: objtool:
adm1275_probe()+0x949: unreachable instruction
drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.o: warning:
objtool: x_tune_dvbt2_demod_setting()+0x92a: can't find switch jump table
drivers/pinctrl/pinctrl-ingenic.o: warning: objtool:
ingenic_pinconf_set()+0x93: sibling call from callable instruction with mod=
ified stack frame
drivers/platform/x86/intel_speed_select_if/isst_if_common.o: warning:
objtool: isst_restore_msr_local()+0x13d: unreachable instruction
drivers/platform/x86/intel_speed_select_if/isst_if_mbox_msr.o:
warning: objtool: isst_if_send_mbox_cmd()+0x80: unreachable instruction
fs/hfsplus/xattr.o: warning: objtool:
hfsplus_create_attributes_file()+0x4f7: unreachable instruction
kernel/trace/ring_buffer.o: warning: objtool:
ring_buffer_nest_end()+0x1b: call without frame pointer save/setup
kernel/trace/trace.o: warning: objtool: saved_cmdlines_stop()+0x13:
call without frame pointer save/setup
lib/iov_iter.o: warning: objtool: .altinstr_replacement+0x30: call without =
frame pointer save/setup
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x25:
call to memcpy() with UACCESS enabled
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0xbd:
call to __stack_chk_fail() with UACCESS enabled
lib/ubsan.o: warning: objtool: ubsan_type_mismatch_common()+0x448:
call to __stack_chk_fail() with UACCESS enabled
mm/kasan/common.o: warning: objtool: kasan_report()+0x43: call to
__stack_chk_fail() with UACCESS enabled
mm/page_alloc.o: warning: objtool: .altinstr_replacement+0x47: call without=
 frame pointer save/setup
mm/workingset.o: warning: objtool: count_shadow_nodes()+0x126:
unreachable instruction

Any interesting ones in there?

       Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/A7C736AD528C0C49B483E1E9E462D1A4969999C8%40ORSMSX114.amr.=
corp.intel.com.
