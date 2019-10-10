Return-Path: <clang-built-linux+bncBDY3NC743AGBBKVS73WAKGQEDDMTAXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 902B0D32D1
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 22:48:43 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id q127sf5646465ybq.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 13:48:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570740522; cv=pass;
        d=google.com; s=arc-20160816;
        b=mg1yA7LQ2mJySckhSt/p6furfZ0gDk2IMTwnMDqC4CM5rEr3HHhb1i4mGzMmQYZmrq
         j/1fJwIRNK2FC1aa2FNJ9zsMGTbQyP8AiN2A3ooGWgbucjlcTPqty9Aie1MqDV7sWIGG
         llf+yecmnxE4m/nlaDY1Rp1AVpimrk928tFl+XSfQ2KadvKHAJHQlUaOybwT8eMasH2J
         JGS/CfVhSzgw/m3xFnSBt++2KlYodu/D6KpZ08l6mgNdIJdvJkpxo2APjaNqu4ShU6JH
         4D09IfQxf4KCElrl0ZAwFn+r20N7GsQfEni2NFoj1Qc9WK4WSoqeDUlTiTgBaV86jdbZ
         /YnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=+fXm1VumqkgOMufN8phEjUR/LSbygXL4ovWqBpSqHMI=;
        b=l9RT4rDGhGtKID8VSe+0STQImtDv0IBO674tNkmCOY60qvx8TMSXrcgAzasaBeoG/Q
         ZB7HsjPzwPmCd0VJgBuzCwSztWwVW4Lxi80bQ6uvdpkUc/voz4q4CtKbNB29Mm0vgOJt
         A4fDKVdFzJ2bv278Yt99NTLItcRVCrltHbPbCj3K9eGXDZBGIpUfMR3Bpc/GVySNepvv
         BS9egjeaAMs2Mm8ywJgxwiRuUGa4oDplZZAK/7OI1TphLr1xgYr+dH+YCOc+DP1/z83F
         EfK0QDUQEHqwxEOMX5dwZ+nwxY2PDq0ygB2WtojN7EnBmAJjRtw3nAcDkJDkzys7AfKE
         xZ4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.142 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+fXm1VumqkgOMufN8phEjUR/LSbygXL4ovWqBpSqHMI=;
        b=tFeTqsII3nU+Iv7KHImHAOKSGHz8Vqoi9eJjuEOgqV7UMAU8cBd8PTnJN2ogJCEU67
         dj7s3S8o9Q19ih3fCXekttEhT4vOxxnKqDePYwzMGaDkkJf+RaABKKDe2v2x7xbDjS4N
         nLxFcy2D2sjSQa5EGGJj2kh7dImy/W+CXBjIBuNfvs42go8QZb4vldl2fJBHFBRXRFqT
         qaDfFrWjwF5sAgcplb4j3A2O6LrWnVCKC0tTDgsC7hNsseacA87XB87Q1+P+KcsV9VwC
         YL9jxRhKMvq7yy/A6WjkwZpP2XkoHXlzOiSoskIAq3UjuUXJaT9ZGlwxRPygl5Zu3/y3
         Ss5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+fXm1VumqkgOMufN8phEjUR/LSbygXL4ovWqBpSqHMI=;
        b=Wjb7IwE+qhpEcDa5xSCYsYKLjKTj/+Of1Ek0UHYPewC/sWdB3u+yKc/Y2yUjEh1a7y
         xvcwQHrJGyam3K7LhqTn2hWlX9J5nLwSB/VGEVCqbVTKpvj6HIxcEP8QAg3Nf6i5FFnE
         vWnisW/JQvFVtmJ0GlQhtv3uuMtMAjf/6YMh33uhTuEX3lDskAfeDGp/8I7QcLjrS8th
         tHIvVyuI0R4I1JcKJjAAMu97HRZM0HfdLUIA7LA9UO/UpeTgO1anBNmZEipU+o5DbEti
         u7x5wOnh84xUTRCV4U74aTRdeNfiVQlKHk7KfSazM6XOgXkYEgqCELoIZOjIzwpXEENB
         36SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVLNTEOXpltD083VXEdPsZYU/2vdLpMZLCzW8DvNoIIjwXjRejW
	HSBOVutdJW8+tab6AwYPmWg=
X-Google-Smtp-Source: APXvYqzTqDCRJJ3I3To0X+kOzp0r8VFXY3EkediRsjd4zzkvwSJCQD/+mqvMHGsG4ONCu49VPUvKkA==
X-Received: by 2002:a25:21c4:: with SMTP id h187mr7659987ybh.316.1570740522409;
        Thu, 10 Oct 2019 13:48:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:c442:: with SMTP id s2ls904880ywj.9.gmail; Thu, 10 Oct
 2019 13:48:42 -0700 (PDT)
X-Received: by 2002:a81:8282:: with SMTP id s124mr8805290ywf.498.1570740522109;
        Thu, 10 Oct 2019 13:48:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570740522; cv=none;
        d=google.com; s=arc-20160816;
        b=kCu+dIJvLz7lx5s7XA05saIGpzarDlmhF3dq861pDETCDhIhszq5SG+nClzMx6x9WD
         oyy7+NzXHpxCG+xj6GE1odW1kXlEZdvIDuLc0+h1tiTx6sQfctfi25qEOiq/e04ln7vy
         kkQEBVA7mbpALBg71H/q1bAZVCerx4ITIEhuA0julyxvDL7iE+pSdbc383SYbJQcKxw4
         APZhBVcfPOyEK3V3U2twNUIA4Ssc864RJwbk0F2vm3Sxr9rZHE5nGV/aV4ddqKi1/Jnb
         t6qQzzcV3OSGO43H4QMwdq25prMN2eGejIpW3+3I99KzlibFYoXfKVVNo/nOTsR+k080
         7ysg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=0N0niVZrFRZzi2MaEeT9C9kxNuxX1P69X9z/IGfJrjM=;
        b=iCEr8Mwr8SO/xV7CEcqxKMvXGp/5BnJUKC2sfhot0DODlex4YnNgk5AEsrc88atV+4
         OltjcKXTOZZG4Y3NwOqfEblmYwL6KdA8asZScm40PmgUw/vjWtduWaCzOYYa6OXchSjj
         Xrj7JNKBBF2IO8dkmW+kZOnyjbFQTgfCDbIJ8EWKqEAB25JEiO9cPqpalFGPy8R6u7kP
         UnmqUMY4pS+ZYUkNMs70+Of9aiNbNVfFWnhtR8WjRO0kVQLetyddfw5qEK+Hc8XRyz0z
         DbXPVdfWhYSodl2RbyglPK57aWQM2xrI4iEKQ79fickKn2YGzjUUXU2WLv0hGpBeO2zC
         nAEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.142 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0142.hostedemail.com. [216.40.44.142])
        by gmr-mx.google.com with ESMTPS id p140si703442ywg.4.2019.10.10.13.48.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 13:48:42 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.142 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.142;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 88169781C;
	Thu, 10 Oct 2019 20:48:41 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2559:2563:2682:2685:2828:2840:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6742:8985:9025:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12438:12555:12740:12760:12895:12986:13069:13149:13230:13311:13357:13439:14096:14097:14181:14659:14721:21080:21324:21433:21451:21627:30054:30090:30091,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.14.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: dolls38_4b7237beba646
X-Filterd-Recvd-Size: 2857
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Thu, 10 Oct 2019 20:48:38 +0000 (UTC)
Message-ID: <4b2ed594c5054138562c80cc94dee8b5398c9064.camel@perches.com>
Subject: Re: [PATCH 4/4] scripts/cvt_style.pl: Tool to reformat sources in
 various ways
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, linux-kernel
 <linux-kernel@vger.kernel.org>,  Borislav Petkov <bp@alien8.de>, "H . Peter
 Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, Pavel Machek
 <pavel@ucw.cz>, "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Arnaldo
 Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, Alexander
 Shishkin <alexander.shishkin@linux.intel.com>,  Shawn Landden
 <shawn@git.icu>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)"
 <x86@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Andrew Morton
 <akpm@linux-foundation.org>, David Miller <davem@davemloft.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Thu, 10 Oct 2019 13:48:37 -0700
In-Reply-To: <201910101338.59F36A33@keescook>
References: <cover.1570292505.git.joe@perches.com>
	 <4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.joe@perches.com>
	 <CANiq72nwDgMgXNczW=JRANzH72=f0ukwVoPaud1d7J4YQLQX=w@mail.gmail.com>
	 <52794b248ba13e88ab4c30c9b6ea55a7be30df5d.camel@perches.com>
	 <201910101338.59F36A33@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.142 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2019-10-10 at 13:39 -0700, Kees Cook wrote:
> On Sat, Oct 05, 2019 at 11:35:42PM -0700, Joe Perches wrote:
[]
> > I think clang-format could not do this sort of conversion.
> > Nor could coccinelle or checkpatch.
> > 
> > Anyway, it's not really necessary for this particular patch
> > to be applied, but it's a convenient way to show the script
> > has the capability to do fallthrough comment conversions.
> > 
> > I think it does conversions fairly reasonably but likely
> > some files could not compile without adding an #include
> > like:
> > 
> > #include <linux/compiler.h>
> 
> I think this is a nice tool to add -- at the very least it serves as
> infrastructure for future similar conversions. And small cleanups can be
> generated from it for people looking to clean up subsystems, etc.

Another similar tool that used checkpatch and also compile
tested and created git commits was reformat_with_checkpatch

https://lore.kernel.org/lkml/1405128087.6751.12.camel@joe-AO725/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4b2ed594c5054138562c80cc94dee8b5398c9064.camel%40perches.com.
