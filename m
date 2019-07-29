Return-Path: <clang-built-linux+bncBDYJPJO25UGBB65V7XUQKGQETIPFSMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9E679A2E
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:45:49 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id x22sf16391928vsj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 13:45:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564433148; cv=pass;
        d=google.com; s=arc-20160816;
        b=sv9Ud+40qn0K8m0LUjsVsrBcQirfOSZ2+LZduFVW7tTpEWDCuKu29GG445yDuq79lh
         Bj/blaQip9TFYdo/R9W7Az2ZffwUDHkx+Kj20cUO76s+XvFjVwCJECA4CCWKtyDV8BLQ
         jXX/Am05U+zG2BTV/U91/inUBc6l+MgXU7G4E/zFHQvM0lAHHF913CHK6/MYGegL7pFZ
         tktJ8IjisUBrEL5xs6UofbasbiB9oyZfdo7RqGGjLy5IVWh3n0dVdFrNAa0KKTTdzkVs
         eHiXSQX8Wi0vDcWuoZSsRL3zXSlnsybU/lAeXUMnEgZYH94nlY6g8xACJVh58kNH5q7L
         2ntA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JinYC0SJF6Wf3ZRMsS9W/1NybcdRZ5mBk0sMd60BYMU=;
        b=iUjUtTB9NbDf3XLqUltfETTVoz3exoeORqxbIiy8lwlYH2MT0tQ6wM87+WWiNt+5l1
         o6TxKkRwiM7Zm08VKhWIYHVA9aAHaDroxG4aXvvnqfzFQkkhbmtXx55kpcHFH3PFX/Qq
         ragFKRRcJ0uuGbpmMrpyhSEYYjOKpyibR7R/DhmDow07Me2WgaAbTM3LF0ADDcaChysZ
         hsQmESir05JAa4QblTpoaZdLlG7AVEn8fTxUCa4f/uigTYkSNpdTbqM2An8SAEDBtH9Z
         kCHzqMaeJMvMGq8fNrrnKfXJmGILrBLdIqMsZ7VyQ9CwUQwp6UsUltezIItdIIzGYqqp
         OfNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WPJlgbNE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JinYC0SJF6Wf3ZRMsS9W/1NybcdRZ5mBk0sMd60BYMU=;
        b=nntNJcdszK+RVRdLlFlYIr7F6et+o6e2WGfRRoItWaS+U1K+X63181Kl/k6Q45hQHo
         wrGvSzPXS6+mwquE3bU0aoNoNtPx0Fq+gPHfqnHdoOvcjaSNMymFo48WhgHLMfjrUTvd
         OXqSc7Pw5S9NfktQn+Sm6kmNHoe+IJexKkv0Sgj1+M9RZjwUJprsCm4NWhMQqc6ybx6d
         n1w8o1jU0NiZhGtdQSjKNSUXQh2Ee4xuZHX43x05XfC9LxedF9GXXCFmAJtFdSC5ubjj
         ppzLbSkQKOLOmY/i+N3gTX/k2t5/vU7zpsN9aiddqTkcZiHNHFzkYlTZcuj78+zWU3r5
         vz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JinYC0SJF6Wf3ZRMsS9W/1NybcdRZ5mBk0sMd60BYMU=;
        b=ZsceCYvtpucjM80iHu/LQaark77ejQI407UPNepQMyBhOkWW4BHen7lYulOsYAcYSB
         99aGpHFVooQ8kZoduhfeRprnuIXLqPOI/a6CkTkvW5Mc5IoGIryQEdCmOLeXkibJo3Zt
         UC+vfOwsOJtw1q3bRyUTDLvhmG9uSOQHkpJH9eB+tZK9FZo+FuHhzVKyI9KZXtkNjE++
         3e/wdGHtEOPcInoxYDvSFvR1dLenrmvA6eDYLJp4j04K5XWlZJBIMF0FySOF0vDf3eqp
         MnAzqV+WniTsm3QiUDH20LVn3GX535IuuXq6sS3CM9/OzuIF5T9nQVwFSjLUsAaezzN8
         j2Nw==
X-Gm-Message-State: APjAAAV9WE38VIZY7RnzGXVXaEJIivthjkkt2CAoxXoGGgHKBHy7ZWPz
	q7uFbD5nX2XaTgCQeiax3tc=
X-Google-Smtp-Source: APXvYqxsxDXu+LR6UIUfOTClBI5I/IB3Zf2HIeir+SM02ZBcMueuJPXUdHjb6kOq8ZwMw6qn39Abpw==
X-Received: by 2002:ab0:7384:: with SMTP id l4mr60011777uap.8.1564433148019;
        Mon, 29 Jul 2019 13:45:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8cc8:: with SMTP id o191ls8060669vsd.15.gmail; Mon, 29
 Jul 2019 13:45:47 -0700 (PDT)
X-Received: by 2002:a67:7c92:: with SMTP id x140mr72495849vsc.229.1564433147616;
        Mon, 29 Jul 2019 13:45:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564433147; cv=none;
        d=google.com; s=arc-20160816;
        b=omORCA/kV71LdV8yoY83LJE8hqdl0DNAbXRypVXi0ZroKlDSvpjo0QueOVcQclgHuE
         4ZdlUZ5w53mXPsFx1dkDceX++KmZ3Cx57HvFSn0DquTidm37j7sscZoo2BitCw+QqYsZ
         lwUyg3m1dY2YdqA/sGk4er75JSZFa0o9FXTmVon71EPuYSFDJb24vWkIu2MjwjKoE5n8
         cbWNxIf8HXsABGqsqkBhQfCNgHNr64ufN3P4sRqyA1QO5ilvynlDHc0qfr6g4Yu3M3Uq
         TU5Q+fgpV15RopBobak16Nws1YL8t8D7O3cuSUBea12TH5UB9I+0PcH/LHndYV003gWV
         rALA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lMrEHRmz/SUwhMpEhzoL0Mw6xHn5eIa1ccchwHTfCGg=;
        b=J5iF4sMpAqkg8bqbHWtIgW84sph+Y773j2V4OgKNxZHvk8oYJV2e1ehxC/enZeIlUC
         m5lMGi9R++of6ipHQo8NkRyFlN7Q3e7SIRosKyDypaNxQfhIfbcQ83sZA9dZlrrAbU6B
         OKpWYNWQhcQqka9R+jmitWohTucL2QVnJSOnIYKt6l73TPm2gwOCHf+kEebKtwS17bEK
         V6TvPQKbLtjGmh3TgqH7IXYamPP5h4YPg2rWvHUcOO7vNgNDjOjJJs6BkdzgJsb2LHMt
         AWddG2BJrOhZJrPurfU9bt21sEBtEhHuHAXnbADoAs/y377v4WumbYf33ISfScQWb3FR
         jt1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WPJlgbNE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id i9si4158838vsj.0.2019.07.29.13.45.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 13:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id u17so28834553pgi.6
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 13:45:47 -0700 (PDT)
X-Received: by 2002:a17:90a:ac11:: with SMTP id o17mr115215537pjq.134.1564433146243;
 Mon, 29 Jul 2019 13:45:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190729202542.205309-1-ndesaulniers@google.com> <20190729203246.GA117371@archlinux-threadripper>
In-Reply-To: <20190729203246.GA117371@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jul 2019 13:45:35 -0700
Message-ID: <CAKwvOdm7GRBWYhPy4Ni2jbsXJp8gDF-AqaAxeLbZ03+LvHxADQ@mail.gmail.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Arnd Bergmann <arnd@arndb.de>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WPJlgbNE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Jul 29, 2019 at 1:32 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Jul 29, 2019 at 01:25:41PM -0700, Nick Desaulniers wrote:
> > But I'm not sure how the inlined code generated would be affected.
>
> For the record:
>
> https://godbolt.org/z/z57VU7
>
> This seems consistent with what Michael found so I don't think a revert
> is entirely unreasonable.

Thanks for debugging/reporting/testing and the Godbolt link which
clearly shows that the codegen for out of line versions is no
different.  The case I can't comment on is what happens when those
`static inline` functions get inlined (maybe the original patch
improves those cases?).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm7GRBWYhPy4Ni2jbsXJp8gDF-AqaAxeLbZ03%2BLvHxADQ%40mail.gmail.com.
