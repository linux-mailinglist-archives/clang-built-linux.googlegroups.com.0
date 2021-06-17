Return-Path: <clang-built-linux+bncBCT6537ZTEKRBBWAVWDAMGQEHCAZCGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA093AB653
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 16:45:26 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id s8-20020adff8080000b0290114e1eeb8c6sf3022882wrp.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 07:45:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623941126; cv=pass;
        d=google.com; s=arc-20160816;
        b=zmRjRyJakVf/+LiFnvn5nAXTQ9vVBqP08U+jozy5FngX61Ti/0NWxPNuvjiS2BkzZY
         Ru7jpJx0lbAPXdpnZgv7pAe8sFN9+2riRpP2q3do+P7qIIwF/+dqUGIB8k7N0L2Wa4ZR
         H2yoQDiDGy/40GJZBwXGgreReKEuBcWTvQdsQR3yT9T3atJPqbSg+ZgerSLM3xHcr9kE
         bzgRGWXK06YexMSnbbmQvvm1WFrtDX7dmGyVJCuuEhmyLqALIviw9oDTbmT5kmm4HrSm
         GvXdYewciHCaI28OkPfAEl652pC/cang+LNvm7viweZjifx3Pm7s/p9cD9H0hH5Y1NK6
         FFfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=MKbsGXfEpqGzToQSeBufVvZd2PDmb+mQPjo8od3SdVM=;
        b=M4xe1hHGKDeHgZbgKMRFx/sHiMP2MH5+Akgg4hJeDktMCfN88O/MiirD02uJvWI1Fe
         Qc3xIjJa4xz+QWyiIhSxRO5S/GLp8cMw7DD6fn7ftzyTWmoS+dtclBtGRCjq+xgORz7s
         m3OdqquI0MnpS/yNa42QvmHPa4oQny3PkLtQzQ7vCcTa3l/tOkv4Z8ijE+PuriFEBZpA
         VqNinsvK9tGwGFfO7zf7YlAAI4HqjtkFh15jfvzoYNyN7t/M83QRkd+jXYBmbUtrUcZG
         z3vAQUNmUAEjDRfxrqvZ0G2xIM2YW0rND0mC96zg8beDaGalBc4JapWo8Xx/IMsCCD52
         w8QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Xk1bAexl;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MKbsGXfEpqGzToQSeBufVvZd2PDmb+mQPjo8od3SdVM=;
        b=bsXKq8O3ouLYFGd20eqQq/B/K4TdnveR7hsaolCm7LaLTK1xCGqDowJA/hxGqlhyPJ
         17fp3683smQ7iz80RhER+3AO2lc+Wp29aC4xAm0oZqYZNxBi6ql8yonn2+4IE7ZAXEib
         x0j5rPtUYOlMTKPBnctitm8H8aSjP7HqwO0Q2+Vl0RQFkP9tiLg4JdjpqlmSm/N+t/9h
         JfLZj2K+eARg92P+nAntt3NyNsh6+E4U3v3zqvhqcJx1myC37/9JZ4T/pvpHAJTNuoPK
         HknR44S+NwTDVjAJcZgnUWslZI72oAcqOxZEvQsxy022Lw21OcPEnktFooojIgg5KWzn
         Bjhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MKbsGXfEpqGzToQSeBufVvZd2PDmb+mQPjo8od3SdVM=;
        b=CkqPIjVNA9dy/3LqgPoULTmtci1rVKg394+fDoSS22HXRvhqTffqzDzGHw3GIGq2hd
         biWhAnZaDfjrLXLHebDNgNmFwUMLCTSDqoscyJRWhTwFWUOc5lg+CQMHYqZ56jC6l9G8
         yrW28oQbKUigbHcBTt8T97S/O29vt7YOcLE7hzutwf0X1zbNe/m//94qwhCu8UKuznrj
         BJrO+gdxMPAf1FS5yiEjKbfibT14sqUhiPlyTKqgCTLfpBLeWV69fdq0nY8DUCT04p2v
         tLoqGUIUIgBJ+03EER4r0t190q2YVMARNKMCBgkmI/R2fcztdXKC72LTWEHWajwAJPfI
         MXXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316fwvs1WukbWO+IIbPZKaMnCE85KL+zlzlL+A5d05fXhxtx8RG
	ADBZr9nc6A5DAvZ9viKn7jU=
X-Google-Smtp-Source: ABdhPJybXne/qlxlKj7Y/2PA+btnlXb75Y5DYmyVnkx1pG4ESmA2TDPM7AjebCv37bARMHLmR+Nxqg==
X-Received: by 2002:adf:c18a:: with SMTP id x10mr6164307wre.193.1623941126527;
        Thu, 17 Jun 2021 07:45:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls1996715wrr.3.gmail; Thu, 17 Jun
 2021 07:45:25 -0700 (PDT)
X-Received: by 2002:a5d:6409:: with SMTP id z9mr6003092wru.279.1623941125675;
        Thu, 17 Jun 2021 07:45:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623941125; cv=none;
        d=google.com; s=arc-20160816;
        b=ZMVwNeHaVU6Edqi9KjqVhxl61+AilUnkhNKvzYzG+7Kso80cBdQj6slGMSUlgsT8CX
         nGGOARXn0zVphmGyIG55R8Tev3l2Siz0vkCGXyjYcc4sZp2yHAkAUEbX48zJMPCqDJpL
         2jRqGzo6MnlSH+hA6y4s5/EEGvgyGNm5yIt5EdkLcfa6S2l1JHWsl+Y6QmZVW8ao4FkD
         CLSpSBRFAfihxsS7JxWJNpvgg4nDVCKETaYWi9XkZV1Ujm7tAqnjsB9wM6JEmSkb/Q6O
         NxN/jLbRR5/i2MbE9F/LggYVBhnY44ekuKOZ4uhtUeEkislnlshpx065pDlvevgGyjJs
         2HBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QbWq0G6XjbCduvI65yRZVLjLavdA7VxZZ+xXMBekQFk=;
        b=au2MSy07TObHzQx87QOMK0CS96NL554+QqKy1cIEtj1Z4/9nByrzDuKEtB8Fy/F+g4
         0Y//JxwoUZOe1qFINb5gUTsY0hDOVGnDf55HXSi3O1oyhwU39o9MlvBM3Bamzy1OfQJ3
         Fr21v1hUJsi0UbhTMobg9P0H//c+dn6NO5F9WoXEBiayU+5yHi9/zPuTX6W04sP1yebK
         v+s0CA+UiGzzeqR7tfgkl1uBVqXABTsIdvlXg1+x3ky7CKlduuqUOtX7v3AbxY6yFNIw
         JfvgjaeQu8I8fSHIx3+u4b9O+BNOxzair28KoPvhAQuEUyVR9cnoNVal7mHZHtKkyPvm
         CQXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Xk1bAexl;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id k18si490294wmj.0.2021.06.17.07.45.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 07:45:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id g8so10389637ejx.1
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 07:45:25 -0700 (PDT)
X-Received: by 2002:a17:906:d0da:: with SMTP id bq26mr5761449ejb.287.1623941125231;
 Thu, 17 Jun 2021 07:45:25 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
 <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com> <YMtTdU2b9fI3dnFD@casper.infradead.org>
In-Reply-To: <YMtTdU2b9fI3dnFD@casper.infradead.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 17 Jun 2021 20:15:13 +0530
Message-ID: <CA+G9fYukjZU9_88KuhW5FpG-Y6EOH4ehXgdKm9pGO0v4y4wsmA@mail.gmail.com>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
To: Matthew Wilcox <willy@infradead.org>
Cc: Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	open list <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Stephen Boyd <swboyd@chromium.org>, Jiri Olsa <jolsa@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Jessica Yu <jeyu@kernel.org>, Evan Green <evgreen@chromium.org>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Petr Mladek <pmladek@suse.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Baoquan He <bhe@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, Dave Young <dyoung@redhat.com>, 
	Ingo Molnar <mingo@redhat.com>, Konstantin Khlebnikov <khlebnikov@yandex-team.ru>, 
	Sasha Levin <sashal@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Vivek Goyal <vgoyal@redhat.com>, 
	Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Xk1bAexl;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Matthew,

On Thu, 17 Jun 2021 at 19:22, Matthew Wilcox <willy@infradead.org> wrote:
>
> On Thu, Jun 17, 2021 at 06:15:45PM +0530, Naresh Kamboju wrote:
> > On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
> > > x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
> > > mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
> >
> > The git bisect pointed out the first bad commit.
> >
> > The first bad commit:
> > commit 928cf6adc7d60c96eca760c05c1000cda061604e
> > Author: Stephen Boyd <swboyd@chromium.org>
> > Date:   Thu Jun 17 15:21:35 2021 +1000
> >     module: add printk formats to add module build ID to stacktraces
>
> Your git bisect probably went astray.  There's no way that commit
> caused that regression.

Sorry for pointing to incorrect bad commits coming from git bisect.

Any best way to run git bisect on  linux next tree ?

Here is the git bisect log from gitlab pipeline,
https://gitlab.com/Linaro/lkft/bisect/-/jobs/1354963448

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYukjZU9_88KuhW5FpG-Y6EOH4ehXgdKm9pGO0v4y4wsmA%40mail.gmail.com.
