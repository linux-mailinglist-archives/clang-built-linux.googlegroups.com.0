Return-Path: <clang-built-linux+bncBCFJFL7RVIKRBI6TQGDAMGQEDZGHQCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9B73A0D4D
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 09:11:32 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id d12-20020ac8668c0000b0290246e35b30f8sf4649696qtp.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 00:11:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623222691; cv=pass;
        d=google.com; s=arc-20160816;
        b=J7KY4LBOva1z+FJxqKB0NfLzaClDxVV1X7WVM9/DAvS3wCwEnCxu39fyLOAsEbdGJI
         tvT4HHQVTu/Ch3QQdUVb6otdWN6w/bL8ZT3kt3/5OMfn+/KoFDzAp6kmRUqP4QO0UiVV
         y2bJyeg6BvQwf0hua7DyIxlKpOkqiuSDnZzcRuFf/tMuXhPWEgQUbPFYuDscmuuTM5k7
         GLc7cB8ce6UDKPe1C9fbVMAFObtNquIn85Uw+tsDcXOSCYjvpz5SuEdaSVXvUdcM9Gma
         XGqouycd4OR+kqbzzp9NTE/0ooL+7qTJN0Q2E6vN24KiRA1osmrQsb2NxDwDArMNUgOv
         dE0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=dVTmXT0Mwzhg4PDSgkXDSElY7vu53Yae2J4z8BTscdE=;
        b=VUnxpmJypnEBOTR2aYwYPhKjQrg7dcrWJEXopBo0B8bMYHMxrHxVMPMlYCLmHqYMXr
         Z2ihdDSOFvmQ9ilk1c0QGb4zT/YYpneVeYFp+BaBGKRlODFJ2w/1UrdaZt9hDZ+owwSw
         DRPDNqqgVoFuFROK3z/U2WAsxye/KnMXE/+IYOmy1MOAJzfttxmqKck3JI5LyBb2naLy
         nu1gEwvmEnQffG2esVt559XY0C4LmCwIecP2qAhwhjTxdZv6iTeLG2SFTVGQIIdD5CLO
         gfpliu49WSh0wFFjwODdJh+vu3YVTkRPcocrDKxzGmtFXugh1l2UIhYSl3zaz4k+5K9+
         FxUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623 header.b=KPxT3dD2;
       spf=neutral (google.com: 2607:f8b0:4864:20::429 is neither permitted nor denied by best guess record for domain of lma@semihalf.com) smtp.mailfrom=lma@semihalf.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dVTmXT0Mwzhg4PDSgkXDSElY7vu53Yae2J4z8BTscdE=;
        b=Y0DJNVWNL4jJKGlDDEBfet+uha+kaiE9XZpQGIimS/LjJarQs272hIGweuUSYynRYG
         nA1fU/j9tHb8MBalg9GsjjBMcxHN9v+prOOIVs4Qgj0j6GT0Z1XhQ6pkaCd6/OFPN2uU
         pq72iTKoh4A8OHPEBqTFMCxyb3leZSqX7TgqcVGGmTH7LC99Kwbsz+kuFWYuoTyXG9t/
         3THUaa6j0/vkgySkFCYGBQs3cYluLP3UHdhllEQM3XuyHnFqp8o3UGHjoeY73dI2NgTn
         3w9bpJ6IOZua81DlDaj8+t21O4qI5oLtf5sLn8a9m6sMW7l+cjqulknYNbGf+7z9p71W
         FsAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dVTmXT0Mwzhg4PDSgkXDSElY7vu53Yae2J4z8BTscdE=;
        b=aeaMsBxaaKZEyElmu64QKt3Y6fOJuVRLGBsCT2q3QTvjw+1dpdZLSzmXSV6Vr2uykq
         Cj+R94dzRoh/C58uxADDnRp+acZCP02vJeun6i6tlRSLPcPDjYL6wvLOMnhR80JC76N6
         fQPGppk6Ghzhl0l7aMDMO94ZAoYgheM6x/IOUTdixHqOE1avUBMansljIPTmLkN9tWH2
         I4+EBzIYzcbB/zktRoC9tQbvXrBSmPkUtwUNZFamNHh9MsN7wVTtdcqpET8Bmfrnuxnq
         EK/tGWQDhuhE19mU+UHF/HO+/sxagIdtJ89blWSF4dFSSrWclWgQFzwIcR2uX+xbAUel
         EbNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309dZg66KkpbF07wX461smc9dMegluqt5ZSskBlNNnAj9XdMc/6
	gbmcNjp1phiTyZfi61zqmIM=
X-Google-Smtp-Source: ABdhPJwnz+/+0InuaHKrchrsXl7Jtp8rwJ9YTt2XD22RdUet0Iuk51lx41Wj9uNM2maPLMNIR2FuPQ==
X-Received: by 2002:a05:6214:18d0:: with SMTP id cy16mr4477965qvb.29.1623222691263;
        Wed, 09 Jun 2021 00:11:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5f4e:: with SMTP id y14ls625499qta.5.gmail; Wed, 09 Jun
 2021 00:11:30 -0700 (PDT)
X-Received: by 2002:a05:622a:1208:: with SMTP id y8mr9400609qtx.50.1623222690810;
        Wed, 09 Jun 2021 00:11:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623222690; cv=none;
        d=google.com; s=arc-20160816;
        b=sksoU9uXx/D7fHtzNU5TlGACx4aPd+S10aTOs34sXosrgDxqPQ61wfvCIXXEyNFsbH
         tVKOrgVqMBwoc9jfpGMb1ZvV7yY+ulYX4JLXIWkWmPrhn8Ba4t7Hsq3R05Jr1LEGLRSb
         pwC92ScZtWd9FrLdyMmyfNip40NVWEMoYQGfzfAARCC50xnQgsO8s/Wox1YJDbeyeHN7
         tVS/f5y1oDDpm2vB9vD4t9MqtWNUXZZNOfad1o5XKAUNX49BsZploYFL1/UoC6WIFyjX
         T1dzIMyzsDfRKZ5AK9FpK+Mp3BcGN1CbQPneyXUFbX2W05NwS8z4kTqLJPV4M+26r4Xr
         4wew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KDN/Y4NVTR4ONCwZelyjSq2F6Y9RLnw1vkdnl5IlqRs=;
        b=ouWRil7254GUCc59OtfGPTVJTfxOuSMEregCRi3TUFUxU1Os1sIZrobKY0uj7YYtf5
         TvYKndwX+l2CQWuS401vEnDDz6LIu/ju8QF4ugafG+ReE5ci1Gs+bNyPUdwHF8vcSG5c
         eLFbpHStyktZMC/7dUyOnw9RJDzAq9y7dEkQ7jJ8AeRDrK/Ojj2mclNCwGfx3uqxWBLk
         kUrrtLds2aoMi51fDBqXSZ512SBGPbOQj3y628sV53EnY+BdXXo6mkDk5B/ox/X8XNdJ
         p7f/zMAG1FAQveTY5APgdgwWvdk6+npkgYaWwXEk5fv6j4nfasdKNDpbC0e4BVunyEq+
         BFrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623 header.b=KPxT3dD2;
       spf=neutral (google.com: 2607:f8b0:4864:20::429 is neither permitted nor denied by best guess record for domain of lma@semihalf.com) smtp.mailfrom=lma@semihalf.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id w16si906430qtt.4.2021.06.09.00.11.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 00:11:30 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::429 is neither permitted nor denied by best guess record for domain of lma@semihalf.com) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id u18so17690799pfk.11
        for <clang-built-linux@googlegroups.com>; Wed, 09 Jun 2021 00:11:30 -0700 (PDT)
X-Received: by 2002:a62:7cca:0:b029:2e9:c89d:d8a9 with SMTP id
 x193-20020a627cca0000b02902e9c89dd8a9mr3899409pfc.55.1623222689831; Wed, 09
 Jun 2021 00:11:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210604235046.w3hazgcpsg4oefex@google.com> <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net> <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net> <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org> <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org> <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
 <5dd58dce-c3a7-39e5-8959-b858de95b72c@kernel.org>
In-Reply-To: <5dd58dce-c3a7-39e5-8959-b858de95b72c@kernel.org>
From: Lukasz Majczak <lma@semihalf.com>
Date: Wed, 9 Jun 2021 09:11:18 +0200
Message-ID: <CAFJ_xbp5YzYNQWEJLDySyC_bWUsirq=P03k8HHW=B4sH0V_uUg@mail.gmail.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Nathan Chancellor <nathan@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>, 
	=?UTF-8?Q?=C5=81ukasz_Bartosik?= <lb@semihalf.com>, 
	LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com, 
	=?UTF-8?Q?Rados=C5=82aw_Biernacki?= <rad@semihalf.com>, upstream@semihalf.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lma@semihalf.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623
 header.b=KPxT3dD2;       spf=neutral (google.com: 2607:f8b0:4864:20::429 is
 neither permitted nor denied by best guess record for domain of
 lma@semihalf.com) smtp.mailfrom=lma@semihalf.com
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

wt., 8 cze 2021 o 20:49 Nathan Chancellor <nathan@kernel.org> napisa=C5=82(=
a):
>
> On 6/8/2021 11:17 AM, Peter Zijlstra wrote:
> > On Tue, Jun 08, 2021 at 10:29:56AM -0700, Nathan Chancellor wrote:
> >> Unfortunately, this is the VM provided by the Windows Subsystem for Li=
nux so
> >> examining it is nigh-impossible :/ I am considering bisecting the tran=
sforms
> >> that objtool does to try and figure out the one that causes the machin=
e to
> >> fail to boot or try to reproduce in a different hypervisor, unless you=
 have
> >> any other ideas.
> >
> > Does breaking Windows earn points similar to breaking the binary
> > drivers? :-) :-)
>
> :)
>
> > The below should kill this latest transform and would quickly confirm i=
f
> > the that is causing your problem. If that's not it, what was your last
> > known working version?
>
> Yes, that diff gets me back to booting. I will see if I can figure out
> the exact rewrite that blows everything up.
>
> > diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> > index e5947fbb9e7a..d0f231b9c5a1 100644
> > --- a/tools/objtool/check.c
> > +++ b/tools/objtool/check.c
> > @@ -1857,10 +1857,10 @@ static int decode_sections(struct objtool_file =
*file)
> >        * Must be after add_special_section_alts(), since this will emit
> >        * alternatives. Must be after add_{jump,call}_destination(), sin=
ce
> >        * those create the call insn lists.
> > -      */
> >       ret =3D arch_rewrite_retpolines(file);
> >       if (ret)
> >               return ret;
> > +      */
> >
> >       return 0;
> >   }
> >
>
> Cheers,
> Nathan

Hi Peter,

I'm sorry I was on vacation last week - do you still need the requested deb=
ugs?

Best regards,
Lukasz

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFJ_xbp5YzYNQWEJLDySyC_bWUsirq%3DP03k8HHW%3DB4sH0V_uUg%4=
0mail.gmail.com.
