Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS5ZX2BAMGQEGVPY3EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 0969033C4B9
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 18:43:40 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id h2sf16251934edw.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 10:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615830219; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8nFc6WBFZ3Ix4VHUI3I767rYnkClJOZQQ8FkN14yMFqBk9+By6oPavDroZ3m/t0Mg
         be4JLTP3izHEn+0mzpDDeSj2S+7UAYa7sOQYIM11o34IgUo2c7pV5+MTHbWI2mDHV+xZ
         u9h9AvxYmAcCb5/VboM8dchGfBdQncLaVBsxHa6urtNpjxlrxqZ1szqzuAF/JHnpS5Le
         O9DD0vpoGv3C+4l4BE5RMV4PYs7XeqN/BG45MgKr2WqdBrzeJgV7mOI2Y0apb9w7Rb/s
         fBPAaMni0nxeLothPQG4M7Za8yOaPO7VB7gTI+2YYq7JFBpf7evM7jINJWHBdcGow7yr
         OLAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=L+2RrhSNl9OyRf0L0255ehcorRbA9YPLvrds4dE0cXo=;
        b=D/7Fsk/onSOmVKRTdvJjg0uaEt8cEJ9h9+8xDFFkJzVbw0bD8QdPE4az462PTsZY8Y
         rMedplfF3SUtJB8JX8gX4TxdnGeTECbO8oZOWZ/1sYoHW9meJPhbRrEQAhuqu6oVV0we
         +jPVnE3b4LWXxh1HYW7U+BjikPz7oQQpp9vlhZNvComc071+LOHFK5Fd0IOrxC8cEvBw
         FVribLZPQ0UvIdqFDTL8aN6jK85zZKcun2UxZWMDakOx3RL/hcGGB9RnIrXmHLy6dvci
         ecNAZpe45URlMcvfIgqzXtSRJMTXQNUBIrRQAZhNuiuGwL3lmJ/BWw0yCHV3pDsddGV3
         CZ4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DOparOOW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L+2RrhSNl9OyRf0L0255ehcorRbA9YPLvrds4dE0cXo=;
        b=T6+pIh/LyB2GKINg+5GPXz9pf1dUbYkGobifXKYBTH+ZDYzxDoC8ABLVwFGjw/j2oG
         RVoKrJeBRc1ewQsMbcyI0xuGZ2cqtxDm67M6sAUtDfJNTBV+FgK4d4Hlk7cMzDIWvi+s
         2ICV/VwQMOFK6NiuoZELbn8yEUjiqkuLEV5uzmESY079zGoMqqueNV11K6EnHzxjUUQk
         vKj6nXJUviNfnjsRo4tjiKKBs1ozG2Ll+9EHKK28AhQIhdETSOKUIhM9HCFNI7hFckJT
         8zrsNYnYrTHqn8YNW9RaISi0pgHNCmsN81i6fvOIZwOtW7xdi+/Y1WbBw8kA0TdecKPW
         Hn/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L+2RrhSNl9OyRf0L0255ehcorRbA9YPLvrds4dE0cXo=;
        b=Uz2r501rkXaaf3E5eMMyZSiNHxXklumjt5BcU7CcnwokrTZH+5Lxf/Nf3gkjyM1B8g
         QNJ0VvlVP53HEdz8A727SR1OxJlY6zNsk+zV1n3mCKifzt8/J6hXrTP/2yq9NXBTnF/o
         aJYm2CueR/kDb1tB8mfkfXe6WTTd7rQBW6hll0AKb3zTWLXho10otU5NhOyuE2raqgcX
         YuizsJxbmdq6HKjN3chmfZBIZSDuvJI/75ktBhb7S+obyXm3A3Qwc7PCm0HVWQY1gcax
         W1yboqXbc4XHawZpXEs/2pCil1Oa1MlbS7V7PA8n4/CMx4gDBgLy59BbrHfS8ZySUA0T
         ZqQA==
X-Gm-Message-State: AOAM531RSpE0zzqutjR/0wiwLjDB2WALH2CbY2l5S3qNksGb11j0yU6q
	i40iwWmvbixtjPFEemooB+M=
X-Google-Smtp-Source: ABdhPJyYZ9Q8BpCN8cOP9+6DJiMY2CeRfRkCBdch29ct20usx6N6FkzLS24WJs+WBW/u+GWzeCYpTw==
X-Received: by 2002:a17:906:d9d1:: with SMTP id qk17mr24843331ejb.52.1615830219815;
        Mon, 15 Mar 2021 10:43:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:40d2:: with SMTP id a18ls6750711ejk.8.gmail; Mon, 15
 Mar 2021 10:43:39 -0700 (PDT)
X-Received: by 2002:a17:906:b159:: with SMTP id bt25mr24755006ejb.364.1615830218955;
        Mon, 15 Mar 2021 10:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615830218; cv=none;
        d=google.com; s=arc-20160816;
        b=GvjXZGNTq3CVUVOpNJEGnMm4aZ0ESt4FUu8u1TdVCt7H1TChtcMzeZPz9cz7WzADUH
         cH9gaxBtbsBOo7+OoLMLgh62KtXOcOmFMijxrhsp/BQlxj8bzWeUIj8lzAyuMaQf9322
         v6XVViIAP8SgQELbucnzHpstjBWh5T+VnsYfcyi5RECdzVBl1ZmpUyDseIMxFZTF+Ygz
         gKiHAFrm5bDDxKQKSzd+XHU81qu01dRBkwCsmCa839tAfFJWJzSnqKoz/D39B1dSgUF7
         V1fN+aYkU4WZGoDlDWpBmc3LZHU6/+Q4Y1xrk5WCSlrzATpeP2MpbLq3iiBlNjgAGyOE
         JDcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OtMjZ54OJDOqbtIenqxR+lq1GcaSGpVZuR7abMKUDls=;
        b=M7a3knNF6JqmjzCckWDgQWgZtJKOtmWrMmq5GaPlSMnjuPRvUut9c1Qn6GlkRJt1VU
         xo7d+WVkEUixX+AQFESvFrF9aL3iUFnDnFX//yByAYQ2t+JnpEBqeZtXGwqrPTGqbaHk
         wvIPdYNZu80yDdI2Z0MAOmHAJFYZUR/DHQBP4oxdpV2usADm3l6/hjE2HLezSeYLDxe7
         rFQujPuZ2eadeOGjhV7wVyKyQ9fwnnVgB62fwY7O2s3UCS2/SIluAQ1PAeyj82MiecXo
         6APE7ojYM7mB3vPWuz+mj7yoaGMNrO/IZmVf4nLNHbkmrw3k2ysmo0YBFSl9+GMO3Plm
         Eqag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DOparOOW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id w5si515224edv.1.2021.03.15.10.43.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 10:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id s17so17258353ljc.5
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 10:43:38 -0700 (PDT)
X-Received: by 2002:a2e:b008:: with SMTP id y8mr88050ljk.233.1615830218474;
 Mon, 15 Mar 2021 10:43:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com> <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap> <YE8kIbyWKSojC1SV@kroah.com> <YE8k/2WTPFGwMpHk@kroah.com>
 <YE8l2qhycaGPYdNn@kroah.com> <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
In-Reply-To: <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Mar 2021 10:43:26 -0700
Message-ID: <CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna=Nd+FZiN=Nz9zmQQ@mail.gmail.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
To: Ard Biesheuvel <ardb@kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Sasha Levin <sashal@kernel.org>
Cc: "# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Stefan Agner <stefan@agner.ch>, Catalin Marinas <catalin.marinas@arm.com>, 
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>, 
	Sandeep Patil <sspatil@google.com>, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DOparOOW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Mon, Mar 15, 2021 at 3:37 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Note that the 5.4 Thumb2 build is still broken today because
> it carries
>
> eff8728fe698 vmlinux.lds.h: Add PGO and AutoFDO input sections
>
> but does not carry
>
> f77ac2e378be ARM: 9030/1: entry: omit FP emulation for UND exceptions
> taken in kernel mode
>
> which is tagged as a fix for the former patch, and landed in v5.11.
> (Side question: anyone have a clue why the patch in question was never
> selected for backporting?)

I will follow up on the rest, but some quick forensics.

f77ac2e378be ("ARM: 9030/1: entry: omit FP emulation for UND
exceptions taken in kernel mode")

was selected for inclusion into 5.10.y on 2020-12-20:
https://lore.kernel.org/stable/20201228125038.405690346@linuxfoundation.org/

I actually don't have a
Subject: FAILED: patch "[PATCH] <oneline>" failed to apply to X.YY-stable tree
email for this, which seems unusual. I don't know if one wasn't sent,
or message engine had a hiccup or what, so I don't know if it simply
failed to apply to older trees.  Ard, did you as the author receive
such an email?  Usually everyone cc'ed on the patch gets such emails
from autosel, it looks like.

Then *later*
eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections")
was sent to stable on 2021-01-13:
https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x86/

I was cc'ed on both, and didn't notice or forgot that one had
additional fixes necessary.  My mistake.

I think one way to avoid that in the future in a semi automated
fashion would be to have an in tree script like checkpatch that given
a sha from mainline would check git log for any Fixes tag that may
exist on subsequent patches.  Then it should be possible for any patch
that itself is backported (contains "commit XXX upstream") to be fed
in when auto selected or submitted to stable (or before then) to check
for new fixes.  Probably would still need to be run periodically, as
Fixes: aren't necessarily available when AutoSel runs.  For the
toolchain, we have a bot that watches for reverts for example, but
non-standard commit messages denoting one patch fixes another makes
this far from perfect.  Would still need to be run periodically,
because if a Fixes: exists, but hasn't been merged yet, it could get
missed.

Though I'm curious how the machinery that picks up Fixes: tags works.
Does it run on a time based cadence?  Is it only run as part of
AutoSel, but not for manual backports sent to the list?  Would it have
picked up on f77ac2e378be at some point?

f77ac2e378be doesn't apply cleanly to linux-5.4.y. There's a conflict
in arch/arm/vfp/vfphw.S due to 5.4 missing
commit 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if available")
which is one of the patches I sent in the 5.4 series in this thread.
That was 1 of a 3 patch series:
https://lore.kernel.org/linux-arm-kernel/cover.1593205699.git.stefan@agner.ch/

Should I separate out just those 3 and f77ac2e378be and send that for
5.4, or manually backport just f77ac2e378be and note in the commit
message the conflict?

eff8728fe698 was sent back to 4.4, so if it's easy to reproduce the
observed failure, we can test to see if branches older than 5.4 are
also affected.  It sounds like eff8728fe698 was merged 2021-01-15, so
THUMB2 would have been broken since then. I didn't see any reports on
https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x86/;
was this reported elsewhere earlier? Did automated testing help find
this, or was it found manually just now?  I'm curious if there's a way
to expand our automated coverage since this eluded us?

commit 3ce47d95b734 ("powerpc: Handle .text.{hot,unlikely}.* in linker script")
is the only other commit in mainline that refers to eff8728fe698, but
doesn't use that in its Fixes tag.  I don't see any other follow up
patches (yet! *ducks*).
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna%3DNd%2BFZiN%3DNz9zmQQ%40mail.gmail.com.
