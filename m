Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBM6SSOBQMGQEXZ6EOBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FED35090D
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:17 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id a1sf1700649oop.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226036; cv=pass;
        d=google.com; s=arc-20160816;
        b=E1yzG9lkHVq5aIr4YUUQ2HMf9woahmJasO6O9sC3LAKgyGLKxzjCaJ0wTSjvoVdLrG
         Co2jZrzkfCl9w2LNdXcRNusGMDclEBEBcunAITSPw+u1yZyceKWl/Qh1QB1QBhWyfGdC
         C5+kQExC9womMKP4X+TMHslw+vh/8bLFxe5KEeQKbqBvKwsSnW6UAu/5qBfvhI3uO2k3
         QlA/GuYnsiq5yzHqOsXG7/Ltltm7bCkWQjbfREB4y1gDh0Kfn4H4RPWKyIb+r9d4c/tu
         zb2SmZ9cFASKGbXp40RmQaL014AtBWED4hNtT9J4JIkfKVg/m4DSYsANYiZiA8JAD5h1
         SMsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TQQDadX+RSIUfKhpJ4+iYNNeHWXbVsvpFKNPVrJ3gDI=;
        b=GTDjbrZuBJOzRk4TEY5lSRB9qxPG/c68tvUuy47R+lARoEDS73oeeKM1pAdDbDM7pS
         w78XXn6tKcQLVnzL604gpIGJpppqRbdsAY77Z4rw1pLHOO3ezK7iyaLyNIBqw4nnfPMA
         cnFV3toDpF0C/e4DErl/q1iQO/+vIZlgX8ja1EeL4pMtu2O/tEDXtbuHb1Le1iFSTj2F
         NoE6Pp+2j683n+Z3fIeB4AUP6tbcgkuHwQ6LMJQgkzepqI7cVHo999v+YSqYaV7ebE7T
         g0FtO1bTc7ZPYXo7HPR0yIT1CX0p2KjUbr/MFJqr6cIvpDNLNWdG3PBg24gYXiFFCfzr
         IujQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tuDEf+Kr;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TQQDadX+RSIUfKhpJ4+iYNNeHWXbVsvpFKNPVrJ3gDI=;
        b=m7TkdLapn4nGC3/h6H+cEpnYTThVJfVK0YGTO5C66cY8XDFZrsTS4aQyia3TWGGQB8
         SKIryEOU5Vv2DM1GibB/AyoJAHmdSUs59Tp2SV526e/8jBKceJxQAr3ivcz3vpdki6QW
         hH7/1D09wua8K740IdRYKh/llCl4GRKGZmL9ygXYp9nTljIY7H+sqtVfeZQtywHP+vSG
         QB1rfayamhq+uskS+JaYePdPZLiv3+uYUxT2uEHOXM3v9aPA3BldNG7Jd+DY6cTYjXWU
         O6ma/iF7//bgxV4v9L8oYfzOsS38lTCAuy7f5jT0Oe/2TIkHSWqSrQdXHId0OwywgIdM
         dYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TQQDadX+RSIUfKhpJ4+iYNNeHWXbVsvpFKNPVrJ3gDI=;
        b=mdSUv3aWlwnYTJdRoXS5aX3GbhvsHSJof6Ej6BMKAvpt2gXzx4XlYD5483DWIPLioX
         cW8VOiXqYD9ke9VVfE/OK+01srvGLsQc6Yww+nVd4su0Oa6K5RuB0ROXSqPMcJcvMZhu
         jQvcCKAj9pAgU7Jt/RvHGd33Zysv3cIBA4SZMsNH7Ior0ymK5y0ATysCMVBp9Xe7yscO
         Vu3RAmDxMxCWk6XAb5/crB7Dv15Ci7ukC7Wn2BVBcdgyeq/iMcjxClD78V7SN706QiKg
         c/MG0IUPcg5E5NxNgY9dmjrwsaw5eogR05o/rpSySKeLhgFExjsHuh1CKpwEqcdPLv+T
         5+bA==
X-Gm-Message-State: AOAM533BrkQuw3liQ7P4uRHKVul/J2DJIuFepIjdM+OGGlYvsNBL1QGo
	/c091DyR/on1g6pRe90xPEo=
X-Google-Smtp-Source: ABdhPJyLyoz33lDzo/WntiUTil9ebcLsR6kCEpEff2KgZX12ZfetbhRis1qX1bcGxBk0u9ogWIyPag==
X-Received: by 2002:aca:c44b:: with SMTP id u72mr3454158oif.33.1617226035716;
        Wed, 31 Mar 2021 14:27:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls775325oiw.10.gmail; Wed,
 31 Mar 2021 14:27:15 -0700 (PDT)
X-Received: by 2002:aca:1a01:: with SMTP id a1mr3549534oia.33.1617226035363;
        Wed, 31 Mar 2021 14:27:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226035; cv=none;
        d=google.com; s=arc-20160816;
        b=vS4L25oLoo82YhDaI9pF2cu7rD+4Vm2SSvFz+05zOGtAq6V0AzVFQzVCBxzFQsv9UR
         /8L5T9dHOmZClmhLrp0EuErElk3iN4vtWAmRTPSfKxz7NfHh1MLdjHCrFqaOGlPOsBAZ
         WtXXnbiHH9PH/RiELFwaQzFivYmfKTFvdjaZ28irLGT/ugc4mL5lVTBOyAmPN8RZx/uY
         edW9OyZimaH9Nxr4OVXKB62Sg4SMmZ1XugTTvuRfY21lCg9Inhtz8cy+LTpVO9DJsitF
         rR0xWmMNu22dtySIUM3uFpicvYrKfopnTxOG2ApLw+BHqb5MOl8eBkCrZigVSDNiO9p9
         21DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1a9nw4dRreT9m7i9jOCqKxsQ59JKMg1ge7idA3E/Sck=;
        b=G2mS2Lsy7k4z2q+bK6z9LCu7miZT0O0uDQH01QtiNO4N3ndBamtahxI4ODbqgm7TNP
         ytC4bv/J34LRiVIEKnGn1aJF9CkVDzcIJsF4NloyoC/ETQ8Vlt9j+ZSedLUBMPPR9RCF
         mJFmeFa9OkRyKxKL5fz+mb9tfqD2eqJ6vL+QEnBxGYQnxl7eIvY7b1OjsEBVTvPM3PJF
         6FJrNWcI34PSsQWDNhCmJ2AUIoeamP7RL52rtxUqT+6X5asalPMI9eYZyGNYOSGzfciM
         rj+/z8mqeraYXPzssKZG8FolLWtNmbsEzw/BRC/R+qCT2wkQK6HUXvvaYrHLRhmUN32L
         jr1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tuDEf+Kr;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com. [2607:f8b0:4864:20::331])
        by gmr-mx.google.com with ESMTPS id x38si372845otr.3.2021.03.31.14.27.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::331 as permitted sender) client-ip=2607:f8b0:4864:20::331;
Received: by mail-ot1-x331.google.com with SMTP id v24-20020a9d69d80000b02901b9aec33371so247556oto.2
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:15 -0700 (PDT)
X-Received: by 2002:a9d:1c89:: with SMTP id l9mr4250360ota.25.1617226034882;
 Wed, 31 Mar 2021 14:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210330230249.709221-1-jiancai@google.com> <20210330232946.m5p7426macyjduzm@archlinux-ax161>
 <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net> <CA+SOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA=jtYb0hqWY1g@mail.gmail.com>
In-Reply-To: <CA+SOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA=jtYb0hqWY1g@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 31 Mar 2021 14:27:03 -0700
Message-ID: <CA+SOCLLBgKtTz732O5zcrNs_F=iS6C2bE4HBmJfoPTum3Yu1oQ@mail.gmail.com>
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
To: Guenter Roeck <linux@roeck-us.net>
Cc: Nathan Chancellor <nathan@kernel.org>, Christopher Di Bella <cjdb@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jens Axboe <axboe@kernel.dk>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-block@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tuDEf+Kr;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::331
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Hi Nathan,

I just realized you already proposed solutions for skipping the check
in https://lore.kernel.org/linux-block/20210310225240.4epj2mdmzt4vurr3@archlinux-ax161/#t.
Do you have any plans to send them for review?

Thanks,
Jian

On Tue, Mar 30, 2021 at 6:31 PM Jian Cai <jiancai@google.com> wrote:
>
> Thanks for all the information. I'll check for similar instances and
> send an updated version.
>
>
> On Tue, Mar 30, 2021 at 5:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > On 3/30/21 4:29 PM, Nathan Chancellor wrote:
> > > Hi Jian,
> > >
> > > On Tue, Mar 30, 2021 at 04:02:49PM -0700, Jian Cai wrote:
> > >> This fixes the mismatch of alignments between csd and its use as an
> > >> argument to smp_call_function_single_async, which causes build failure
> > >> when -Walign-mismatch in Clang is used.
> > >>
> > >> Link:
> > >> http://crrev.com/c/1193732
> > >>
> > >> Suggested-by: Guenter Roeck <linux@roeck-us.net>
> > >> Signed-off-by: Jian Cai <jiancai@google.com>
> > >
> > > Thanks for the patch. This is effectively a revert of commit
> > > 4ccafe032005 ("block: unalign call_single_data in struct request"),
> > > which I had brought up in this thread:
> > >
> > > https://lore.kernel.org/r/20210310182307.zzcbi5w5jrmveld4@archlinux-ax161/
> > >
> > > This is obviously a correct fix, I am not just sure what the impact to
> > > 'struct request' will be.
> > >
> >
> > As commit 4ccafe032005 states, it increases the request structure size.
> > Given the exchange referenced above, I think we'll need to disable
> > the warning in the block code.
> >
> > Thanks,
> > Guenter
> >
> > > Cheers,
> > > Nathan
> > >
> > >> ---
> > >>  include/linux/blkdev.h | 2 +-
> > >>  1 file changed, 1 insertion(+), 1 deletion(-)
> > >>
> > >> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> > >> index bc6bc8383b43..3b92330d95ad 100644
> > >> --- a/include/linux/blkdev.h
> > >> +++ b/include/linux/blkdev.h
> > >> @@ -231,7 +231,7 @@ struct request {
> > >>      unsigned long deadline;
> > >>
> > >>      union {
> > >> -            struct __call_single_data csd;
> > >> +            call_single_data_t csd;
> > >>              u64 fifo_time;
> > >>      };
> > >>
> > >> --
> > >> 2.31.0.291.g576ba9dcdaf-goog
> > >>
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLBgKtTz732O5zcrNs_F%3DiS6C2bE4HBmJfoPTum3Yu1oQ%40mail.gmail.com.
