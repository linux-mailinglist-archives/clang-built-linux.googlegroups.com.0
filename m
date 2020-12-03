Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBKNGUL7AKGQEZRXSVGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4022CD058
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 08:26:34 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id v13sf561115oos.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 23:26:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606980393; cv=pass;
        d=google.com; s=arc-20160816;
        b=S6CS6QukfU02DVc6EzngCWiWXMbxJVR8rFKHxRcXOh8pb8a99zdzaAFB+KIUaiRZNI
         e0Jpk+VuBU4lSdRaHbd4R7Sb86IuFuJD6lJ0BrkyvOeTsa4d4QLWFkMqIPl+c0nYZGqV
         ZzVYmOGvBfOSMvc3Ffyfsdh9f0FDdu1mWgHHEkVKcqnJ/iuz+7IGa33WJMllunZ1Ha+/
         YaxDu+sMqi3Z5NvPi7vcFtC5zY9bZY72w7FStNN7/Jtk8XqjMLhnHJAQkkUEm1fA7eT4
         hFIlc3zjB1QWp8f67kINxyf//cu0e9tPF5Ew1eeCEU/ydRkaEC70VYfiEeHwZVryjlGo
         l1GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=I3lYjh+aX7ABavE6xxfNGAhpBWFk/GAngjPFRVtZ+VQ=;
        b=FTVjkuZR0nfHirQbjxYr9L63yLfNlE/qJQ0zqiXgHUKG4et3B+2IRAOZ9N3eViaN/R
         dg4cfkslWdiDdrEyt/mQ8RidIW4LtzrCbrn8voHtrMNPSwW9rWX7e9lhfU8qTWVo2tuW
         H/dhhnUIJsunkZOZ+CnEy0NDPps/YrLuqyEL3dMj+A+ZHcmY9rH2AhOWDqx8pAJuqwSc
         JfPsHm47mOxYR+FHDKfmd99JwQpW6ou3RyGjIUOa7ClLW85tdTcDarIo8Ez4V5lkyFus
         NEMsumUM2a+5lvqQ+MnG8JKRGiVDFScXvnNlc8GnMDw3zSVg8Nr4crvznwvA6CoV487m
         MARA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4vgdMjZ;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I3lYjh+aX7ABavE6xxfNGAhpBWFk/GAngjPFRVtZ+VQ=;
        b=pkvcMEZPOU0cKti34Kk0E0xqqi+QZDzi81BWZTtgQpzixArknIu+zbQvBLQNv5FHCH
         mvATUfpMiAs08pM6yYEvJ06b8geO+3C8nqNK9MHNED8GxYGRE4Hzy3lKvOJN9ibl0E1n
         b2ArrJhOpIp/dYhX/n9Pqj8DWduQeKajhLhaE5WnqwbiCH6rHRrgVaAIcJh4q3nmyPo2
         KYXkIokb1iFNaR7w5XoItIJJwgatOON9lixPJckUdTX+z8fpDmZdlfwCTeQUI6VHKViP
         PCbO6wl8krmfX72GtxgV7uxvOVCivMNVtoez3QtV1qnxf5BWFxoEowme5GiQrGT5ZQ4O
         hW/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I3lYjh+aX7ABavE6xxfNGAhpBWFk/GAngjPFRVtZ+VQ=;
        b=Dqw+XlqfhvYZSILDntjyQ5O5+Kp8V129sOb+P+je2z/O4M9A+BQlyBSsQvWCHoZDJ3
         AP/JI5K44Z9TulFxE7mDz/QQG4WMtbCB6ddeLbTASkSTVuJSpAa2AV9Bq0lCRANDLIYn
         B1PDRFzsSmJw9A8zJL4WeCzDysrL+Z2ib10r6+Pm/SLShsbe/+6dHyfg6jkpH2c+mENd
         AS+n8+RvwIJzHt/3xXVAUByk/KwQoli4SevP7mwtFmphKehUkYLV5cmev8OsoRnCRgZG
         VjF43OxNYlV8yafbky6Xx9IlXNe609G5jquxnklFQYQ6QPnsbYe6K07hKqH9GedSC3gX
         p41Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I3lYjh+aX7ABavE6xxfNGAhpBWFk/GAngjPFRVtZ+VQ=;
        b=iNHezhGgWz3o3bpshBhIrMPSFFgJGSsORtga+tDNCrczLUkXy4knzr5Bx5pTzeyJry
         eVmtaWCCpgNNahIz4lvO/Vjg1e9F3XZs0ld1ovlXWlVUrXP5ktwa/963U2qc9zMk9gmY
         edVWfUNFCW865pU9aHDG8nkePZy/hbuPcfJaIf8qIQqXJ0oH91pBfarNrCnzsVrj5RK5
         Yh4aiZHhiA6iBLWEprFWE5F1giT3SpAnaO0NEjHkCoM3QdA7hJI4ZRlg5plC5qrO/Fw8
         jhO8oIZivZykxhoSuMKREUvWdt8pfZHx+uOah71k9Ptm9U42WpmrvGPaa7mLSkrKSGFQ
         IY1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zpHY3AfjRo/MiBVfBWcD/FZzaJAJxh887URxbmgOKEGPiqSRe
	aEUE+I1SjqNug9dvSLFAic0=
X-Google-Smtp-Source: ABdhPJy7Rqh7+kMUuwIyFPvHLRCN7dO0O+t9pDiRUoa/OK0kAn32c3MqPcvau+1wByVJaweCHBrCrw==
X-Received: by 2002:a4a:d023:: with SMTP id w3mr1226699oor.23.1606980393823;
        Wed, 02 Dec 2020 23:26:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5e07:: with SMTP id d7ls1131295oti.9.gmail; Wed, 02 Dec
 2020 23:26:33 -0800 (PST)
X-Received: by 2002:a9d:4b81:: with SMTP id k1mr1225700otf.371.1606980393388;
        Wed, 02 Dec 2020 23:26:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606980393; cv=none;
        d=google.com; s=arc-20160816;
        b=sW7+iPNhw8XpavBDC7ji+JMnwsPt6dRPS3rASCVO3c4dwNbuGCFBXkJmDtDnZVBP6C
         ExPuq+vfdZbL3NawE9lRxaGOCknuEQELYMSIsAO4TrkFo+QYVchAXSvzzojJ+gCKYG/U
         aZMTynm79AkyDaNCd/LnQEovkSoXfDrAAtQIdxYokxOAvAMUP7m67Qyqtvw413FOfqUK
         afZ+qK1yzgWjZ7hCy9fm+9Z5ORkpvgoz08618xaV6MhHdxwkyObV+f2KzhMHiv6mxJgv
         gBmBMYaSp+swbynZs7AWVH01lHdQrZ7XngrZ3k/LR++SCacU4AiA+s6jlsRkaeCCpusc
         QH/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=emdEKRg+VtY/b+Z/ynezlyfsfNTHHLZTMnNrAokmFjM=;
        b=z5J2sMZK+ooPkQP3M84mdlXxoXloj2LuwTOxWOO8bNkshDc3S1UzEUROQ9uV2vBgCS
         ks0DBYGx0XWRAmWmx2NKz5qb23NWNi5u+nc/ie5hl60vNQB/ocvArEvODNyNGqaIBCaZ
         /lhZHmQzKmmRbdx0Ef6wT/eYqu9WGlSoqxagAGdJfc8MVl4eZz9vyzC2NvJ4gMnP80LH
         dC6ClMJDedva13IY94+q1seg439gVeatLVyHUI4gLO5zYJi01Y4t4fhRM7nHm1XSX3oG
         x42zBU0K0gqchChvkGDaWe7bX1cY/uYGrBO6xW2XpxE8wHM0HLtwoPf2Ja2nhh1AHjdo
         Pphg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4vgdMjZ;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id o23si39178oic.4.2020.12.02.23.26.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 23:26:33 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id t13so1028399ilp.2
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 23:26:33 -0800 (PST)
X-Received: by 2002:a92:aacc:: with SMTP id p73mr1915136ill.64.1606980393025;
 Wed, 02 Dec 2020 23:26:33 -0800 (PST)
MIME-Version: 1.0
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com> <7ca84085-f8e1-6792-7d1c-455815986572@redhat.com>
In-Reply-To: <7ca84085-f8e1-6792-7d1c-455815986572@redhat.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Thu, 3 Dec 2020 08:26:23 +0100
Message-ID: <CAKXUXMx0nSZqFfOF63J+awCpkPkgr-kuchUxd2-tuMbA2piD5A@mail.gmail.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Tom Rix <trix@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Dwaipayan Ray <dwaipayanray1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M4vgdMjZ;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::144
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 3, 2020 at 1:46 AM Tom Rix <trix@redhat.com> wrote:
>
>
> On 12/2/20 2:34 PM, Nick Desaulniers wrote:
> > On Tue, Nov 10, 2020 at 2:04 PM Joe Perches <joe@perches.com> wrote:
> >> On Tue, 2020-11-10 at 14:00 -0800, Nick Desaulniers wrote:
> >>
> >>> Yeah, we could go through and remove %h and %hh to solve this, too, right?
> >> Yup.
> >>
> >> I think one of the checkpatch improvement mentees is adding
> >> some suggestion and I hope an automated fix mechanism for that.
> >>
> >> https://lore.kernel.org/lkml/5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com/
> > + Tom, who's been looking at leveraging clang-tidy to automate such
> > treewide mechanical changes.
> > ex. https://reviews.llvm.org/D91789
>
> This looks like a good one to automate.
>
> If you don't mind, I'll give it a try next.
>
> Need a break from semicolons ;)
>
> Tom
>
> >
> > See also commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging
> > use of unnecessary %h[xudi] and %hh[xudi]") for a concise summary of
> > related context.
>

Nick, Tom,

It is not a competition between checkpatch and clang-format, but if it would be:

...checkpatch was first...

But jokes aside: Dwaipayan Ray, a mentee Joe and I are working with,
has already submitted a patch to checkpatch that identifies those
patterns and provides a fix:

https://lore.kernel.org/lkml/20201128200046.78739-1-dwaipayanray1@gmail.com/

Maybe that is helpful; and of course, clean-up patches to the various
places still need to be sent out and having a second tool with
clang-format that can check and provide automatic fixes as well is
great.

Tom, go for it: that clean-up is certainly helpful to get a "make
CC=clang -W1" warning-free kernel build. For some smaller x86 kernel
config (my playground config), there were not too many warnings
outstanding, but the -Wformat was still among the larger class among
them.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMx0nSZqFfOF63J%2BawCpkPkgr-kuchUxd2-tuMbA2piD5A%40mail.gmail.com.
