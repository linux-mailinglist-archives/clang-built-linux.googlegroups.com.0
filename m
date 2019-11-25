Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4VS6DXAKGQEG6I3K7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 589AC10934E
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 19:12:04 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id m7sf8524797otr.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 10:12:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574705523; cv=pass;
        d=google.com; s=arc-20160816;
        b=aKkWB01prUGz74DUQ+WpVOXxTQbanZSfVQs+JxGinmHMkMEZkfyiA3KRLW8scg43BI
         B18TzcK2OVkGA5r5QdkGEI6UulRb92c+boI9bM+ZTmxz3p70LXUCD/MCYDLt5VR5zvVJ
         8/HJzK3ezfW9XR9fHLxVlM3PX+88eLo1rDM1iyfhcYm1F4xCQ+b7sejYLiwoq3iPgOC6
         WRWDeGoOcLR90gtGh8fkdsUf9YQXK/14xHjGSNFN6GbugK9zxODBzcR2UgdzE5lQQ1D8
         0/2KiQijPZPo0n1nP203gQ/zyrkzNPjV8do7MQi5Bi3k5dO4OU+4BGQrfpENST9bH7FY
         TwIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TUIYnBtLX+y2KuElDJuHuwELQ4Nsc4JOmVFRsUw0aw4=;
        b=giTWYlZspIjQlGduYAT8693XReogE+FC4akKeIHx6xVBYkyT47hyV8fr3NjdLfrU9m
         1iU+akdWL4NtOJNACZfVZvAsp+0y5aVqJdBZsiqLLePt9KQ833qnYRrX1V//csbpqCBA
         GvflWLCJD99BoBzUCQjtTV7R3FL2yxhGYaZRnth16AmTBqf7qpgMe5nDoW4XXW6hMMfj
         E6B2rfBZK7evEEcLjwjYTvz0oLUkCBY4hmmmgt2odGUqFyz4CgXdJc3vPIVJSrcYSUVd
         gusv+rCvJr8C9+1ruD53K3BKh2xpee17SmHuMuX/kkCuskSlQ4CdwBoKit7EoAs1qaVe
         Gk6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mpKr83F5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUIYnBtLX+y2KuElDJuHuwELQ4Nsc4JOmVFRsUw0aw4=;
        b=aEUH2SHMZpoBGmOMgApaH4EgdoYACNPZCRuDhtKnGYzXLt0+GPVaWaFYervxaRFO7V
         DCHeMiraDYuFI0wkj5AYJ3T3OoIE3gubP7JatHPe12p8ChyQen2NFNrtDoJrSzOEW/EI
         0U3tDwDjUV1sKfre0lW8754wv/BeXFk4NAI8f512s2RJIqqFKDhEZDi94aXqT/eQVzUy
         UW7C5dz8+MbabQKo5ZVt1pI4FKPWh4ZXeYGSjrYc+27NU9Oug2z3gnkFgH39SdKhzVjm
         GYsrXF9/ZgxjgziQNVvcHQg9ThNpJFv8ncrAP+N0RCQzn+Po1pZ9m6f/g3bxC6hXmDAh
         rGYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUIYnBtLX+y2KuElDJuHuwELQ4Nsc4JOmVFRsUw0aw4=;
        b=Al7XOy4IpmeEwia7XUi9jqpyZKKO/wrSZmgP3GLUGHTwDfHoU9X6Gq2/HYkluXDfmV
         2UGLmCf32EXNBkuwVAnQiegk+m7a+R+KNzrip+1YGbb/YJV4d/16me/QvH7He4xACigM
         PkhndwZPn24ayv55740/xbENMq35rMsn6FULNardxkehILn5fdLXV6jD62IKxBr60EvP
         HlsLvT/QzmCMR600VAPW40Ghv9wYUmF5SDUqkAgd6pJPX+3wRB4SKEvAu4jNZPofXOCp
         AaOSg1jcg4Jcv18Xh7hRmTeEK/xzLnD45CxSGoWq4fHdhmVj61nO2Evjo3Qwy014PAan
         aNiQ==
X-Gm-Message-State: APjAAAUQz0r25gFghNDc5uSNl+0NUV8cvy2EQKymWHz7o0NoYt05yLPh
	7vslLZ7Cydv2grFYA7O23JM=
X-Google-Smtp-Source: APXvYqzmS/g019NCxVnmMkjoYsjpLn3/9wHT52EiTE4JxQnP1NpSU0xsMb/dRYfKItr5guw3PM+IOw==
X-Received: by 2002:aca:ed85:: with SMTP id l127mr123846oih.75.1574705522860;
        Mon, 25 Nov 2019 10:12:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a0e:: with SMTP id n14ls2822867oij.13.gmail; Mon,
 25 Nov 2019 10:12:02 -0800 (PST)
X-Received: by 2002:aca:d0d:: with SMTP id 13mr170781oin.44.1574705522510;
        Mon, 25 Nov 2019 10:12:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574705522; cv=none;
        d=google.com; s=arc-20160816;
        b=b6oJiiTzeMIs+tWxeItb9Vly6z3+zfm9iapgjKGiYN2BOu2+JhIbuUIVjQrS21hHqp
         nf+pkE2285XNhIzhxug7F9aveTe3TbwMDFh7JKwU93NlIMOmcWyW0hraL3i1Qr+gFj4D
         fqG4aemGR2jx4NQ2nnIjENlWrFinIxL6vuk0snq7iuyTVB1TpJ0eBd8kW+RPb8OuJ4Kw
         /4w1S9erjry7PJVWYxxnxhK2sITD0TDHvORyHIyymO/J+LZVq28Xuzmpk89VDokw0vYw
         a29kLellNDNSUWe0uJc47Hbpz3ifG7KXUrsQXLLBJtdhss9xT3dxvFKQxSKhmhTc0eZV
         +J/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q3d6D8er8Od6j7FI6CIPPoPtTyBct0O4XmH+/cqSRIk=;
        b=f+A93Khq0Jc3QaYoABseqQaa0+3uwScBkpG78YwJ7yLoxI6GzMKNjfecGENRLPOo7p
         oc6BK5T0nCrUdN0ftRtW0IYY8kx4XrPiJJ3pfyc7k0TtlTwUxk08Uj8ODySNImtWkme5
         kfiBx3yN5pqdBpg1ioy9cQgo3M6CejekyZgTHQfCXEh2l5C7xBXwqa9SpIRQah9LZlNW
         27zP04Fkom6xekTXZXZyZYTWaTPggi1euU9UXazaio0TalsEutigq3M/NswK1kJEiKJX
         g5sj1snUFR87dVjir6HJBh0uU+ZeWjR/W+fX/WaNcsLFHG2yEuhSBpXpGgieAHNmwSZO
         qrFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mpKr83F5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id w188si338598oia.0.2019.11.25.10.12.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 10:12:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id t3so7130019pgl.5
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 10:12:02 -0800 (PST)
X-Received: by 2002:a62:bd08:: with SMTP id a8mr35666907pff.84.1574705521879;
 Mon, 25 Nov 2019 10:12:01 -0800 (PST)
MIME-Version: 1.0
References: <201911191421.oOPAr13c%lkp@intel.com> <CAKwvOd=2frrSGAh5a3NtbcXuCsn3B4xJYyFvLGftqaDmNj+AYQ@mail.gmail.com>
 <dfbc952f478c57bcc2b8ec41ef0542119785444b.camel@wdc.com> <CAKwvOdkntuMELqccE2UT9p0878OWnGLDWfqaxeB7wHSJNRXETw@mail.gmail.com>
 <07bd7e95-c28e-6890-96e6-1a1c3b97dbcd@intel.com>
In-Reply-To: <07bd7e95-c28e-6890-96e6-1a1c3b97dbcd@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Nov 2019 10:11:50 -0800
Message-ID: <CAKwvOdkoixg0D0_6F7v=PyhkgbR6UEe1CHKYM3M=5PrwtLkdgw@mail.gmail.com>
Subject: Re: [atishp04:efi_stub 1/1] drivers/firmware/efi/libstub/arm-stub.c:203:7:
 warning: variable 'secure_boot' is uninitialized when used here
To: Rong Chen <rong.a.chen@intel.com>
Cc: Atish Patra <Atish.Patra@wdc.com>, Philip Li <philip.li@intel.com>, 
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"kbuild@lists.01.org" <kbuild@lists.01.org>, "lkp@intel.com" <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mpKr83F5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Nov 25, 2019 at 12:11 AM Rong Chen <rong.a.chen@intel.com> wrote:
>
> Hi Nick,
>
> On 11/22/19 3:10 AM, Nick Desaulniers wrote:
> > On Wed, Nov 20, 2019 at 2:46 PM Atish Patra <Atish.Patra@wdc.com> wrote:
> >> On Mon, 2019-11-18 at 22:39 -0800, Nick Desaulniers wrote:
> >>> Atish, below is a report from 0day bot from a build with Clang. The
> >>> warning looks legit, can you please take a look?
> >>>
> >> Hi Nick,
> >> Thanks for the email. This is a work in progress branch. Is there way
> >> not to trigger kbuild tests on this branch ?
> > That's a common question that Rong or Philip can answer (I forgot what
> > the answer has been in the past).  Rong/Philip, it may be good to have
> > a URL/link that I can point people to in the future, since it's a FAQ.
>
> We have blacklisted "efi_stub" and "wip_.*" branches for Atish. In
> general, branches named as ".*experimental.*" or ".*dont-build"
> won't be tested by default. and we have a doc to introduce basic
> configurations: https://github.com/intel/lkp-tests/wiki/Repo-Spec

Thanks for the link. Looks like it doesn't mention the `wip_`
convention, and it says `*experiment*` (more specifically).  Would you
mind either adding the note about `wip_` or a new wiki page saying "If
you don't want 0day bot to find/test your branches, please use the
following naming conventions when pushing branches: XXX."  That way in
the future when I nag someone, and it was just an experimental branch,
I can just send them the link to the wiki about the convention, and
don't have to nag you?


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkoixg0D0_6F7v%3DPyhkgbR6UEe1CHKYM3M%3D5PrwtLkdgw%40mail.gmail.com.
