Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOG2UX7AKGQE74P3NFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id D670A2CE23A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:56:57 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id m31sf996585uam.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:56:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607036217; cv=pass;
        d=google.com; s=arc-20160816;
        b=ls6ne7cpGInQ7Z4PvX31xbbr2FZGbfYjmeH6CuIQYzfMX1Nk1eiMBFXcnJ3nyrwWHN
         f94M+dUVvp6l0EM6Y7jKdFTqO+D8lyzLwiPzaIXLsP0E7i/xRhhjDbo2MJ9elE/Gh+iS
         Drd7TNe+gRHqyMaEQzSD34DtHHEvwTYf2wtfLhiZgolzkSEWqzhUQ9nvY4wrq4baMmKx
         Yqc9voDubj19yb9tq0JFTjgW4wi8zcvrPp8619pRCOWnycAWztPKbeBCoSeRk0Xjf+/5
         nBXoalAUq6XYNeP5CcZD+38wbqY3Gqa/y+gVnNc95Y9K00Zvz8Oa8UbDBYiw2GFyKGnv
         82ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LMUxRDapUL3geCRs+3OY9jRUFszljefeg0iuq06YD5Q=;
        b=UPxaRgfMVqol6dY64cbvR+zjpuSSE5tRBZRdK56NhfMEae+sbgcihYhlFCBLbQ7wdT
         0LA6j/WF9DWdD6EVTWP5ikBFGEa8M6v/ELFf80hh73RI9ZnoHU7yswkqYzHrTFkFXDR2
         PCcV40OE6o4UP2J38prCDK79ar3Lgb8yF5UTWO2ejS+pHFqTGiVXbs9riMU9UM2/cUPN
         FUkqjVGqrLOPs+6pC8pVh1f6vHCT38YyxRlX/n7HQYr/I41c4xwh8dOzsM5l/3UcPv0f
         Han5ewnBeGbBPN4s2CirVMSsMnalVGt1/3K0d3oDx0Zy5RIrkINcodjP+DKNRClTCZbf
         Xmjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ovTruuoq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LMUxRDapUL3geCRs+3OY9jRUFszljefeg0iuq06YD5Q=;
        b=Q2iFy2nfoFIdcCYxslGzlIFpDF1okEnu2l9bVQ2rCRwAGq/LjFvadZQSVr8oBgp+kT
         qlLTYZzS1g3wMktGU3IS78ln8Lbd0/UIwfEuMSYdPlXIcMde8k5NvQQzZOM68oLwbJSy
         OSgToG2NZhYDyZsxt2SzDkGHE76nNNBaZ8FVY/bgxUHhW6BiQVeMm+eVdm8VLvDqLduZ
         ZLY4Nf9ywKkpoFRz7DWTFLHn9eJBkZpJPbldciioCaMSk4hWQ4oJq/eahsuBSMrw5GKg
         Lk2+enKLeNUfUEBWRxGxsYEytg2bBJaR1aOQqLk0G35NhSE7YKEfSE+6WQ40Upzut5AC
         N3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LMUxRDapUL3geCRs+3OY9jRUFszljefeg0iuq06YD5Q=;
        b=MwtuoUKJgtr3iEtfe01qw96ZAz8zDLvpR6MBzIjMaUyoDmlh8HORge87e67zEk1GG5
         w1K4lL0oA28aqHhicGTGbQHEWJEV5iNE1hcnnHE3Wd1zI9d8Y0D9KoT0AkQjd8GmPKc+
         ngrUUGD5UK9SJs/ssdp6AUluwoj6pSDUBFWSCI1pJZtC5pwcdQO6TXSyQs9vWuQeu16D
         qjVPzx8Yky2DZJwXdQBL2jW3XWUVz97tsQlGTdsNyMWzU66cg0Zx+90QJumojzFO1aHG
         WSHTtebsN7T4DNTYIZp49Kvau+BDzetuR098uuhjyijJ5jRRNjRtTeyVsC3QpT8qCwun
         wxJA==
X-Gm-Message-State: AOAM5302R9V4S2pa+41hp6C9u1YMgvWPfWmBLXLlWfN3TYE9x/876f1q
	e/qOlEKAfp2673g5sBlPwik=
X-Google-Smtp-Source: ABdhPJy1tXQ5Kr1uPMN35Rt0OmwHUzLGx/28cijsc8jx3pctbYkt+MWZaB+DHUYM8IsrTT2EUZ7Zsg==
X-Received: by 2002:a9f:36e7:: with SMTP id p94mr1185332uap.71.1607036216998;
        Thu, 03 Dec 2020 14:56:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3250:: with SMTP id r16ls264316uan.8.gmail; Thu, 03 Dec
 2020 14:56:56 -0800 (PST)
X-Received: by 2002:ab0:743:: with SMTP id h61mr1259061uah.4.1607036216505;
        Thu, 03 Dec 2020 14:56:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607036216; cv=none;
        d=google.com; s=arc-20160816;
        b=w2YQmAGCCUp95YPm9B5nVahdA4/yKZKORnhjeO1y0KgyRc7OD4wihJEmphoF3MXkRB
         7Ren9aD+ytoeLbAsVzi7Oiw+W9H+AnW6fCIOvZxFGPbps+qjvrAhBBF+pbsETBTsYZMR
         yGywDL6/XXh5iAiZxt0gN4SHovpKp8NK/I+YVvwLob7IDEGtvAn7aLnzD/xXROxVH80q
         uHJaWKNSRsuJSQ7lfDIiTfNqU46o6WNQIS4rx8BxtMZEPT5EWTuyAtnV2Wets1vHEBrT
         LNPxMc4RlVmglKFsAzc5n6Xp7WLYP3DmXyi9hb+Cl5NLh8r6GTkB+cA6VcOehBOhlHZa
         BTLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EHAYrKbj/zPl1+pVBO2mTUTD59eSt3ugUwhIW8vCe/M=;
        b=TsVCEWtuzifU0t3t+7n77YouWXYO8yvOCqR8MSfB+4RHY5g/qBYAjQW+w7fc6S2OlD
         6XTxxUaoB1q0A+VNaA2lJp0rEF9i/xuT/+tSdPiLhkeArMYvFUaK9L78wKY2Gcy8k6xL
         gh8m73Y2ttpHYGntc/e2RDDW04ktbxBnOnRjNprhV9OY75lWS8NIUGyQoblOQCipfLP8
         +rCdU/47C9xRucK83f9WMvimE9lnNUEqVXnevDOQKy4BEO0NAnmSy/mZP+sMxzljiII7
         2vxn/0iilXNoHktEzWfeviul40deuUJb1LfCHfizBZdEVjiyp6B/vo70X27X/FvbMpt6
         wobg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ovTruuoq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id e2si70881vkk.0.2020.12.03.14.56.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:56:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id s2so2005562plr.9
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 14:56:56 -0800 (PST)
X-Received: by 2002:a17:902:e901:b029:d8:e727:2595 with SMTP id
 k1-20020a170902e901b02900d8e7272595mr1164945pld.56.1607036215507; Thu, 03 Dec
 2020 14:56:55 -0800 (PST)
MIME-Version: 1.0
References: <20201022012106.1875129-1-ndesaulniers@google.com>
 <20201104000016.GA2399651@rani.riverdale.lan> <CAKwvOdnFstgMa3c+=Vo=QtFYsABDekVeddcPmP=8Pn2bqWfxpg@mail.gmail.com>
 <20201104001703.GA2407187@rani.riverdale.lan>
In-Reply-To: <20201104001703.GA2407187@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 14:56:43 -0800
Message-ID: <CAKwvOd=U1mxfgep3KyoAJ3WBcsywdx9_wfVgLcgAhd-+kFfZhA@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ovTruuoq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, Nov 3, 2020 at 4:17 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Nov 03, 2020 at 04:05:36PM -0800, Nick Desaulniers wrote:
> > On Tue, Nov 3, 2020 at 4:00 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Wed, Oct 21, 2020 at 06:21:06PM -0700, Nick Desaulniers wrote:
> > > > Further -gdwarf-X where X is an unsupported value doesn't
> > > > produce an error in $(CC).
> > >
> > > Do you have more details here? On godbolt.org, gcc does report an error
> > > for unsupported dwarf versions.
> > >
> > > https://godbolt.org/z/G35798
> > >
> > > gcc does not seem to pass the -gdwarf-* options to the assembler when
> > > compiling C source. For assembler, gcc will pass an appropriate option
> > > depending on the version of binutils it was configured with: if the
> > > assembler doesn't support dwarf-5 it can call it with --gdwarf2 for eg.
> > >
> > > If the user is using a properly configured toolchain it doesn't look
> > > like it should be an issue to just use cc-option?
> >
> > I wrote the base patch back in May, and didn't revisit until recently.
> > I could have sworn the cc-option silently failed for the check
> > cc-option does, which is /dev/null input.  I need to recheck that, but
> > it doesn't hurt to simply include it for now, which I've done in a v2
> > I'm about to send.
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> This is giving me deja vu about the -gz=zlib option.
>
> Didn't Masahiro fix the cc-option issue with
>   4d0831e8a029 ("kconfig: unify cc-option and as-option")
>
> The existing -Wa,-gdwarf-2 in the Makefile seems bogus, btw. GCC 4.9.0
> at least appears to pass on --gdwarf2 automatically.

It looks like we don't need -Wa,-gdwarf-2 when -gdwarf-2 is set. So I
can probably drop
+DEBUG_CFLAGS   += $(dwarf-aflag)
from v2.  Will retest though.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DU1mxfgep3KyoAJ3WBcsywdx9_wfVgLcgAhd-%2BkFfZhA%40mail.gmail.com.
