Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIMI6LXAKGQEUQQLHVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 051D410979D
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 02:47:16 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id w139sf11454851ywa.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 17:47:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574732833; cv=pass;
        d=google.com; s=arc-20160816;
        b=r/PcMWghjEEQ5FO/ZWJoC6XNh35tTyP1oMByUBqPHHeIjDshUv1jrVX0Pb+IYTpU/Z
         AIdXZqcyeYaYf3/rZ/8ahx9m3MpuPaZrPW6gM+3CBQb6h5EHblGvdBK6FHa5V0yA56PT
         NzFaQvrhKIW1WxyG/kvSHeY11oikuxPd0qGj6hi5wsRE9QmcyTQScSIHJfKoE9o4uLtK
         VBnONWvSe4DZCT5JeEfVZ63iounm4/C7y9Bwc1V5qJxkISab8G6bANOTw0/Ghd9fVoZj
         wXGenHy1Bwaz1WzpHIWBWlU58MzTdfa0/9FfVKlU+kjfU3PKZvKsi2lQmfzG7uSa5xCU
         55Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5OvT0su4+PsRy2BU+4shrLPbQFhkBktS6rJVblbz/vs=;
        b=XEaVP9YiuoILMMJTEcVhMkUgAxg7bf9MAPMb+6CiF+ZqFOEYnAurcnM+75+BtkWi0u
         AOgJUFeKf7Kl8/lPBICQTQatg74BAX7LQvPOXrI97ufwUICRbBqw3Q4QCzSxSiSWkfM9
         r0dKjMvgEfBPrwzYguEyLwYsZGGMm5dyrlS/NcLxhDZ1rV30VU4CbFcWeiETgO3c1fpy
         gPP0M0W53qwCnJlV7LZ0NEC3oqMNJT+hFHwdNSJCPMT4Frw21ikXpyhOAJiFjxx+iM/r
         BC6hOQTcZsp+2YPBUtTHro9+e51V/HnJGgXhcL9k2yU22e4Pe4X1BbPE1tn9vTcXlscS
         FK4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fKk7iNXT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5OvT0su4+PsRy2BU+4shrLPbQFhkBktS6rJVblbz/vs=;
        b=k6hg9U/WcV+M+W96AMsK/zHpCa3QEVkX2CQ5W4rVBlXYlfxHF6I8s8X1B2h5WvjN4j
         Tdqj5VwYgjiNtsmhENtX8tAWQSw3Y2X7tkJDqkz3KQHXUB1KTLnuScQEaETodqobqscV
         LyF5tZqYGKlJkW7R4whYnmPOexSSUc3hSHMJ6b2K80SHCTSnV6I+6A6Nlzf4NvyhM2aB
         2j0S6YiR1jLkZAmIwd9oAlvBu/hk3q3pFgkIVMMR/TOy/1MhQJ7YNfh3csvLybEffuKj
         mSeJmLPHY9FECIss/CVKYRbM4BB+4x/x3LTRfxlGxLO6eKmo6EuzSaFTG1zRNQJLyvL+
         oXXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5OvT0su4+PsRy2BU+4shrLPbQFhkBktS6rJVblbz/vs=;
        b=bUxOqw0UsSGMD85DFr7R1zAwQeCYOexvW7ui1384DNk1LSrLuWAq/auaueEGWOYJsf
         V43GiERzjBLQjIVnuTh3iBoVl3dEsqK5HJZPGk9IcELKvXXqRF/FPm8OEKETCv7rlWzU
         HwUCAlV8W41ZP76Yf++949ujoOZO1RO+cWtW4mPDWN+l7sqBL1V/WtZiY4K4CSujvsWe
         JjwE7gGwdG50eqcTJGbF+z2o8QyUfTp9vcJjeLtkcFx/fbix+LBkvU5Pipatahcs1cep
         RJOkY5zWGF4eop9r8MXs+fAUHzljqN9/mKEE5WdgUIQFomD86Q65fUCbd01P7AadTym7
         bT+Q==
X-Gm-Message-State: APjAAAWMH0uBsx1sbvTThy58zgrS+sIJmw6xJL2n1RzVkwsRh4kNiiLl
	hOWgn2LlUC1dfvs4HFkywJw=
X-Google-Smtp-Source: APXvYqwbTHEpil6wjnj8NjJ9ZO3bNWuVoztLX5KGahplSkcjaJIyUgINeXChx2W5QiVz4LjMlVHKiQ==
X-Received: by 2002:a25:2f4b:: with SMTP id v72mr26058269ybv.90.1574732833385;
        Mon, 25 Nov 2019 17:47:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8406:: with SMTP id u6ls3220204ybk.8.gmail; Mon, 25 Nov
 2019 17:47:13 -0800 (PST)
X-Received: by 2002:a25:e045:: with SMTP id x66mr26744080ybg.93.1574732832887;
        Mon, 25 Nov 2019 17:47:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574732832; cv=none;
        d=google.com; s=arc-20160816;
        b=CGgwAigVOzuP/DbAA347pcoUmR1J5ahbG5eSXWJIbu4aTihbqC6QbET6K9tLV7CpBW
         oXk+2go1jSIm+G4JnvSgh1ZOP9ReNbB7I6gC5ss8trBokJSxPs/jm4yrnDlcyHB9Z8Ug
         l9Tfha0rKRSXpuFTG/o2A2WmaBpMSiG3aJBGKrwTY9J8BGrExo+cmAL/SRSQWALiJ0tf
         iu6Ya49PQ0AMeriRYJ9TDC1zTaYiwALQ3xQ6DYt4LgPT16uYyi4Q3qXek4fvZmuhgL9N
         BdPm2cPni62/Exzn9QIEbobjb4Zq0a6P1jrhlvK/XKUNXtS8GB1akNtV0Yo8xhH+jp6Z
         thyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KkZGv+kaMOga5WARXycE1ZR6cg0tzVfNuWa+lDuB6eA=;
        b=An5d4YylNVCHk9P1RtuZEe6nX3GEMVmM2LEkyspJP+XZ5S6ZJt50voP8bAkC8YvkpW
         bpsutIm8pU/Hex8Fdb2PuC5T2wYuzESlEw9SuwBUXuRyW8vET/D2o6Pd+fXAI1uZnKgI
         R2dw5YQYrC9QLs6my6EtZoU5y/JZgDoqsN/OFGYEMfsr/nnm8oT1Ig3iu2shI1r8C/TF
         u7fqc8Kj3hqRQMIEnX8w0ZZub55uvNJsKCaYHXuq/+GtRWIC81lLc7AXdlxq8QyxWywr
         e2OkbwZbOcbMuvFpsL4UEauR/Q5ffW6/xW7d+AMlScbtA9voBfvaoQF8lAfPo9kZPzOk
         y5Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fKk7iNXT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p187si469263ywe.1.2019.11.25.17.47.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 17:47:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id z4so8323803pfn.12
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 17:47:12 -0800 (PST)
X-Received: by 2002:a63:4c14:: with SMTP id z20mr27206083pga.10.1574732831450;
 Mon, 25 Nov 2019 17:47:11 -0800 (PST)
MIME-Version: 1.0
References: <201911220351.HPI9gxNo%lkp@intel.com> <CAKwvOdn5j37AYzmoOsaSqyYdBkjqevbTrSyGQypB+G_NgxX0fQ@mail.gmail.com>
 <20191125185931.GA30548@dennisz-mbp.dhcp.thefacebook.com> <CAKwvOdnaiXo8qqK_tyiYvw5Fo4HvdFzrMxLU7k62qEWucC-58Q@mail.gmail.com>
 <20191126014209.GB21240@intel.com>
In-Reply-To: <20191126014209.GB21240@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Nov 2019 17:47:00 -0800
Message-ID: <CAKwvOdnp6kjJkmnDj=bmnN-VaRrNunNCQ5ngUNbCEUXCqYvq5w@mail.gmail.com>
Subject: Re: [PATCH 05/22] btrfs: add the beginning of async discard, discard workqueue
To: Philip Li <philip.li@intel.com>
Cc: Dennis Zhou <dennis@kernel.org>, Chen Rong <rong.a.chen@intel.com>, kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org, David Sterba <dsterba@suse.com>, Chris Mason <clm@fb.com>, 
	Josef Bacik <josef@toxicpanda.com>, Omar Sandoval <osandov@osandov.com>, kernel-team@fb.com, 
	linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fKk7iNXT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Nov 25, 2019 at 5:35 PM Philip Li <philip.li@intel.com> wrote:
>
> On Mon, Nov 25, 2019 at 11:39:08AM -0800, Nick Desaulniers wrote:
> > On Mon, Nov 25, 2019 at 10:59 AM Dennis Zhou <dennis@kernel.org> wrote:
> > >
> > > On Thu, Nov 21, 2019 at 08:27:43PM -0800, Nick Desaulniers wrote:
> > > > Hi Dennis,
> > > > Below is a 0day bot report from a build w/ Clang. Warning looks legit,
> > > > can you please take a look?
> > > >
> > >
> > > Ah thanks for this! Yeah that was a miss when I switched from flags ->
> > > an enum and didn't update the declaration properly. I'll be sending out
> > > a v4 as another fix for arm has some rebase conflicts.
> > >
> > > Is there a way to enable so I get these emails directly?
> >
> > + Rong, Philip
> >
> > The reports have only been sent to our mailing list where we've been
> > manually triaging them.  The issue with enabling them globally was
> > that the script to reproduce the warning still doesn't mention how to
> > build w/ Clang.
> Thanks Nick for continuous caring on this. One thing we initially worry
> is how to avoid duplicated reports to developer, like the one that can
> be same as gcc's finding. We haven't found a way to effectively handle
> this.

Thanks for maintaining an invaluable tool.

How would the reports be duplicated? Does 0day bot build with GCC,
then rebuild with Clang?

Regardless, does it matter? If I make a mistake, and get two build
failure emails from 0day bot instead of one, does it matter? Sometimes
developers may just get one, as some warnings are unique to each
compiler.  Maybe it runs the risk of folks ignoring the email if the
volume is too much, but do authors generally ignore 0day bot emails?
(I'd hope not).

>
> >
> > In general the reports have been high value (I ignore most reports
> > with -Wimplicit-function-declaration, which is the most frequent as it
> > shows the patch was not compile tested at all).
> Do we mean the report with -Wimplicit-function-declaration can be duplicated
> to gcc, so we can ignore them to avoid duplication to developer?

Many of the warnings GCC has Clang does as well.
-Wimplicit-function-declaration is the most common warning I see in
triage, which developers would see regardless of toolchain had they
compiled first before pushing.  It might be interesting to see maybe
the intersection or common flags between GCC and Clang, and only email
Clang reports for warnings unique to clang?  I think CFLAGS can even
be passed into make invocations so you could do:
$ make CC=clang KBUILD_CFLAGS=<list of flags common to GCC and Clang;
-Wno-implicit-function-declaration -Wno-...>
such that any resulting warnings were unique to Clang.  I'd expect
such a list to quickly get stale over time though.

>
> >
> > Rong, Philip, it's been a while since we talked about this last. Is
> > there a general timeline of when these reports will be turned on
> > globally?  Even if the directions to reproduce aren't quite right,
> For the timeline, it's not decided due to the duplication concern. We tend
> to look into next year after other priorities are solved for this year.
>
> > generally there's enough info in the existing bugs where authors can
> > rewrite their patch without even needing to rebuild with Clang (though
> > having correct directions to reproduce would be nice, we could wait
> > until someone asked for them explicitly).
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnp6kjJkmnDj%3DbmnN-VaRrNunNCQ5ngUNbCEUXCqYvq5w%40mail.gmail.com.
