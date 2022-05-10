Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBPO55GJQMGQEYB55PDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DDC521A59
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 May 2022 15:55:10 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id v64-20020a25abc6000000b0064a22f2a1e7sf14485528ybi.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 May 2022 06:55:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652190909; cv=pass;
        d=google.com; s=arc-20160816;
        b=DD7a2D/o0ryMrhQ2K+9DAzrJQmhctf3J4ZrSdqMaE5oyJqgpOhsRwneG28NZtIQpwB
         HhB38FVt9pURsP35ThVXPyMB7pSCRlq+zL1ew5lzE4sTUIkcvV/D9ckUeAlzkW4cjL4h
         myFrwc6tX+/rUZnWpTq3iVLReZhIgbY/myEeHC6eQEus6bBI+MAAr9oQSLowMU20oDzk
         LbZSXPK7/eTn53XLU+Yz88ebWpv4C9eyNQtWtbehCrVmMTPf0oxMjm3TEMuxJvrzHccW
         kn/fs6+bY6CpZNkzsQ/XT3gECFd+fuOUQ94fiHugv1fHucv3CM424upef6ETCYZvQ3E5
         UepA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=sszaVSTitCgF4a9qol4zQ5PcPz4NzJJRVvcoKjsvflE=;
        b=QtmIikpps3HJORhnrUTYu2vmKsk4ASHNZTrs1ScX//BXYdE3ECxSEE4LFjvTRYqNEQ
         VRe/OQv1BBmzt4eVh1lkeCBkwR7G9ACLgxh0QZJp5TNFeImh/Gg/K8VphLhQ/xw5R7uw
         i2tTG98sT9Dfb9qTfjxsmnjse0x7/R0L2esUCR1NimgDledrIv/gtfExL3CTdei6+Aus
         Rvnv66A7h81VqkEukAQaxr6BMd0zy7QQChRBtWJZVunMhhI1ZMnJPstNICZVrtg07B43
         WagZd+F2lk/DG1vllZMVx12aZdQHlkVKplLz4fYAY79Du4vEAr66JI5ExDyBsFS+HXz1
         ZoIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UauZq89L;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sszaVSTitCgF4a9qol4zQ5PcPz4NzJJRVvcoKjsvflE=;
        b=D8MrhNOK5Imd9Tdf6xLnfp/4wjRpXjcSs8KSRaL2pU10Fh5q/x7pa4wBEFCxMqngWS
         OuA0bAqAuqbd6FrAaBpcGm30SSKPXNMaNCikw0Np699WeUBiS/0ZGRi0k8Kq2KMbRPZH
         m1hH/V2wRmxb3tAXN7rU7j/ycJW2yM4yynhKSoTL9dq1pnM3rbak41OUlgWLmrxo+Lhi
         Us8+AmpmoIgT8RfvWIZQ8zqCT5OkwEGTIxvBVngM2BGdwcp3Z0uq8duZ3/s8++BcrY/+
         7zYBajJkfyE0Yyy/rVTgl/ENYuarQepW1874mTYKqVKHyhsn+Fbf8vq754+BUIQBB6q4
         5Vfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sszaVSTitCgF4a9qol4zQ5PcPz4NzJJRVvcoKjsvflE=;
        b=vcVwOhm2bf78I2le8Qke+BPzilnSt3f/YABMFbQwDtVf1o5EECS+5rB8meH2Nc/rYs
         ovWGKPhv2+9ekJMrrM1QdUIBETVvE1HDswL9gUOlrRBFNLP0motsQJjaMWWOOUQquuGs
         mZ41ssHZVD6RwrWlPsBfIAHqx4dhuQfCcyr3xI9Egn/ua9fRfJBYa5CS+lnUNBS0lPd/
         W+tspOreyAl6coP4QyrG6dSVfaIj44cgND4bny9DG12kihxZwOyvDhEnv68Y/ittocUh
         LRKxdkWS0+xoojLXIBjtO+UocYI4aawkNekPefGsNkmXZj6cK1pLpQjC9KRE9nUV9Rro
         Ck9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VXtadF7YBhg2awombS7LcVMmruRiDO1R/0s44RkzfCwZAmVk6
	rvO9sgxwERT8V8gNSD+2Q7o=
X-Google-Smtp-Source: ABdhPJxwdHV8KRXvY9bCDdA9JUZdJoGuyqYgCRQo44v/SEN1Rv/SHr+PARcXBKCj+Wf5LN+MWTEH6A==
X-Received: by 2002:a81:5645:0:b0:2f4:df9b:80f2 with SMTP id k66-20020a815645000000b002f4df9b80f2mr19277993ywb.296.1652190909288;
        Tue, 10 May 2022 06:55:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:ff10:0:b0:2ef:7086:3181 with SMTP id k16-20020a81ff10000000b002ef70863181ls8574399ywn.8.gmail;
 Tue, 10 May 2022 06:55:08 -0700 (PDT)
X-Received: by 2002:a81:5607:0:b0:2db:c245:5ff4 with SMTP id k7-20020a815607000000b002dbc2455ff4mr20269603ywb.244.1652190908875;
        Tue, 10 May 2022 06:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652190908; cv=none;
        d=google.com; s=arc-20160816;
        b=HbnTdvsP+JVgpX33DS0YE/Mdk4V8aOrECstpbLFCrVLIfV/9HGI0kAgNoWupxNZ3D4
         vnFQwg8O23V5Wv9r/dH4shifF0S5/HaMYSIWmQz//mZC3XoDmCzXjbs2GTm3NnrhWpBW
         +8/odNt8WUGEQ87TFu35NWe67jW4XtvHohX7JmAsTNRKKSo+FjPWpoguV/EtCeEkoPjz
         /auLvxKG33itIzn+i8cPv7ri2/zV3i4k9leqLGfh7QLxuLAG+OQGHJZzvenC0zgj4SNq
         lKzQvoaSKecp8H93do9QY2+I9Ezxb4GkmbjLDsl6Mm/jBdn8MIg613ZwU6Ld4FqscNJl
         e8bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=GhyJd382a/wS1zL1PdRPTSc5dz0OmScabiVrpCKaIOA=;
        b=rfraYq2nqt/ocTrShpk60vEDcGN5Af6+nNDWlUgn0cKgyZYrpd0YFMWjqfBY3BWoF5
         H4WePXLmQ3+V0Rv/coEglvyIQHO0AF01EVJoaxQA4bTyNQmQAG0SZ4rY8wNXsNhi1Gxx
         +pHmOaGkztQU/fkdkCDVx6mqe5RMEioXb5FWp5gIei4ruqiexS2X7x3b2P15bjSY6uLh
         I7+5DtpNWXK7/mS1BxYf5HGRSAiuRHzvdm8YwqjNCGqFvlfc6NkWl837/l9m3zUE3/Ll
         ynbYxIar8/+5NBwH12OqAjAmIPHdl+LTOAncS708E6Nk9TpBC6xYe9Be+5sNdWsNJ575
         3f1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UauZq89L;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id e16-20020a5b0050000000b00649fba4e9d4si1637573ybp.1.2022.05.10.06.55.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 May 2022 06:55:08 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 24ADsqJg003694
	for <clang-built-linux@googlegroups.com>; Tue, 10 May 2022 22:54:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 24ADsqJg003694
X-Nifty-SrcIP: [209.85.216.45]
Received: by mail-pj1-f45.google.com with SMTP id a15-20020a17090ad80f00b001dc2e23ad84so2070253pjv.4
        for <clang-built-linux@googlegroups.com>; Tue, 10 May 2022 06:54:52 -0700 (PDT)
X-Received: by 2002:a17:902:7891:b0:15e:cae9:7620 with SMTP id
 q17-20020a170902789100b0015ecae97620mr21001207pll.136.1652190891612; Tue, 10
 May 2022 06:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220508190631.2386038-1-masahiroy@kernel.org>
 <20220508190631.2386038-11-masahiroy@kernel.org> <CAKwvOdkhcJB8Bnrt51siRefWe+ZSvHagCs2G011PzkkrD3cxQw@mail.gmail.com>
In-Reply-To: <CAKwvOdkhcJB8Bnrt51siRefWe+ZSvHagCs2G011PzkkrD3cxQw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 May 2022 22:53:40 +0900
X-Gmail-Original-Message-ID: <CAK7LNATMaW34NP+=0UF=aJ=Z7h0QSuzV2F1QjYjru9nFooG9tQ@mail.gmail.com>
Message-ID: <CAK7LNATMaW34NP+=0UF=aJ=Z7h0QSuzV2F1QjYjru9nFooG9tQ@mail.gmail.com>
Subject: Re: [PATCH v4 10/14] kbuild: check static EXPORT_SYMBOL* by script
 instead of modpost
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>,
        linux-modules <linux-modules@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=UauZq89L;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, May 10, 2022 at 3:05 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Sun, May 8, 2022 at 12:10 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > diff --git a/scripts/check-local-export b/scripts/check-local-export
> > new file mode 100755
> > index 000000000000..d1721fa63057
> > --- /dev/null
> > +++ b/scripts/check-local-export
> > @@ -0,0 +1,48 @@
> > +#!/bin/bash
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +#
> > +# Copyright (C) 2022 Masahiro Yamada
> > +
> > +set -e
> > +set -o pipefail
> > +
> > +declare -A symbol_types
> > +declare -a export_symbols
> > +
> > +exit_code=0
> > +
> > +while read value type name
> > +do
> > +       # to avoid error for clang LTO; $name may be empty
> > +       if [[ $value = -* && -z $name ]]; then
> > +               continue
> > +       fi
> > +
> > +       # The first field (value) may be empty. If so, fix it up.
> > +       if [[ -z $name ]]; then
> > +          name=${type}
> > +          type=${value}
> > +       fi
>
> Consider adding examples of output from NM as comments where you're
> handling special cases.
>
> Aren't BOTH from LTO?  The first case is:
>
> ---------------- T strncpy


For LTO, I see

---------------- t

in the llvm-nm output.



>
> while the second is
>
>                  U strncpy

Right, this happens for all unresolved symbols.
The address part is empty.


I will add the output example in the comment block.





> IIUC?
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhcJB8Bnrt51siRefWe%2BZSvHagCs2G011PzkkrD3cxQw%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATMaW34NP%2B%3D0UF%3DaJ%3DZ7h0QSuzV2F1QjYjru9nFooG9tQ%40mail.gmail.com.
