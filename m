Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL6WQGEAMGQERDTJO2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB723D7F28
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:23:12 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id e4-20020a1950040000b029034f05dc854asf6134364lfb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:23:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627417391; cv=pass;
        d=google.com; s=arc-20160816;
        b=T/7SljwtP9POBP+Q3mNHYtx+fWcvvpKCF0Bjy3O+mwfW05H1hk62WpuScdAkmJhsSQ
         aQ3WigQabPAFOMA03GVzCwFcEc/MJUvkfn+O32V/iid4oa0UDb7ceOxM1HOZTIgRDuaG
         RQAr9RtKqXqsttWN+S6+a51LjLuUqN2IwBeolJ9oWz/C0TkNax+IAC6NdMp3CHhCynWe
         wj5T2S5KpCGxAht4adppg88e1xTtg13IIdqrdXxq5+jOq1yfI1I/mvPsPkuMwoBN0d5S
         SIMlZ1U4eF+TTm/5PAALnqKCGZYOE+3ayr+gq2MOs8fpyCaIq3a7k2Jmr+HBQ/aS2YM1
         Nmww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=y+gKJlxQejq1TuDeVayV3qOTAUM4OebkUXxCCjoj000=;
        b=qkd5bED0MMauvhu8thlrfUq+XmhtQU9imlxGyqqJI0OPATU4mXZLVYqeHlIZtykZ6n
         H5l8tKBQXOvw3f3rexMSt9elhGS4kMadqYVr9HPcD9HPJ3vd0ZR+8NwvE2nK0cwJfdvp
         f7l55E+J1w3Ibu/5wrwNp5ucw+KqlwNDdQaUrwTYXDGL0fb14qCvngyvXke6H8865nTT
         7KiWu3Cfu7Uyb7a3qPbE4sZYJfa0q8rmfWf1Lhni+N2aQIMvB8LKntyF9pDFayOJsuq3
         +3UMV4KkXwU44XmCo4+0lIl6rfYoOU8qhRhmmnlOXkcfl8k+pQjgiRAeKeKkNr9kFqKg
         Me6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U6mBUsPG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y+gKJlxQejq1TuDeVayV3qOTAUM4OebkUXxCCjoj000=;
        b=mXdwtwwhLmOs2eGiihzAbmf0HvswslNwrcJs/XqmB6rjO6Gm3p/Keg5yiOYcUO1kHe
         AbP29duXusdfREXlMC7M5k9J9Dez/N/5gyWN0YGzt6j68COvbw+qHQC3QGq5E5mbu5Hd
         zVl3cnGMxlgQyhNMWJkg2ZmtcOBgRV1xoQZHgWqUZH2OHCkrhdtSshY20gMjDFwxZsiG
         JpPMSqPwVb/8F24ynUVfH9NhewhPA7Vvm4QC+oygSYQLgUU+vMAOLTNnd8egnrfXnsfd
         LmhxgajEuGFG1vmaSkTRxYfT+bmkbcgIjTk6B5WhYrbcO96lF4MXrWej8iO5l3IKMNk4
         +jcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y+gKJlxQejq1TuDeVayV3qOTAUM4OebkUXxCCjoj000=;
        b=fLRnxsS/+A8irX6R1fEpBXIFWHVc6gtFHBmGOxIab9byx5jKaUEiOT1mWCIQpJSFwW
         +5WXz3p58pSLGM+qqklLBDBeWW1r8FilItLJmPGjoWLpMPsjzRfCI6ujeF2lCgZBZ29I
         xvEwGHYiUBtsI70L4KmhSxWdEX3Kwwh/1oT3BJrQ8k0gy61j/QcndFfbuxOUlBXXWGsN
         FNztM1RHfX4Uf2hzVWd1YKXlBG/i01ZG5MX/hN2o/qDmPDFLQM9e9JeArg5+4UaOurbt
         jlpa8FDSf6g0LxkfQLbNCK0zHWoX6kn8sXz6Vs2GIkAv0MS6XKzGnh5JwnrSj2296DKg
         E8cQ==
X-Gm-Message-State: AOAM531oCbnXd/t3F2LOhYdHhnWaWTyUK9wopKn7YeDYaPjj0ZYpo4ot
	fQT5zouFGFyScrRCMmbiFIs=
X-Google-Smtp-Source: ABdhPJxfUNUWtDEagx5lFaOuxR2398Td3kxI4dMlqp1zpM3/lFxUV5UhSajw26Sl/Lg3ulO+eVx/wQ==
X-Received: by 2002:a05:6512:23a7:: with SMTP id c39mr17362282lfv.173.1627417391641;
        Tue, 27 Jul 2021 13:23:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:36c2:: with SMTP id e2ls1162259lfs.3.gmail; Tue, 27
 Jul 2021 13:23:10 -0700 (PDT)
X-Received: by 2002:ac2:46d0:: with SMTP id p16mr17871229lfo.23.1627417390632;
        Tue, 27 Jul 2021 13:23:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627417390; cv=none;
        d=google.com; s=arc-20160816;
        b=F6uWokGXEG9K24llpuSYPDdF1cMmAMujDjXy4kd+CgvF+9TK9IMbVsqs5xxvZyOKm4
         iiHszKdB+K/LqJLpOVu4L6Licykx2hnQRdRlLRlpneBQpKtpfhsvzttp74RboPq4vDyD
         0CodGgZDMD0IGUPnJwEYLh4LuEJM50OhN52/Osr9E4l+tEgEh1hhUgMcQ1bvTg0wHBBh
         VLhrvDt4GjnpV28NJJ3ui8o6Dmpyw5hUiNqP+lAk5u4JSROhJMXf41Fwk3/Z2yrITS4Y
         8+h4QtoaXm4UnuOMOLI+mcCyIo43oBc+302XonR50WgFmfbO72z0byqlxfYN4WMtvTqc
         ebCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z8tgMLXTJ1SBcDGWx17C0v5tiHolFuBjYw86xA1bG74=;
        b=sJh/n8QwXDkB1SA/Pquo3kPGlddQ5+cEBOGtWIWH0oaRh3/I5nrBePutXwtx+b9L57
         UToD6cX+sCnJlLjTzuqCuIT/covHBS1IhtSwPVnpY5Y4jkZHmM/zJvfY/OEaZc2YBImi
         hlVufJwlM9BIaVJKjzt7ggY7jVaQY7lcHll2gzKUBBrVq8pkRnE2JGCOj8qp77QTpYnQ
         BUZejaSp3nDqTgY1oc30JRODY/KKk893FrG++B+LshjW+6alv8MLrOy7FkRotWm5sk2n
         zb0fsSmA5JCYY5TXctzZHEk0umw6HtHceBXuNT8DtDH4YX9WsALyAFxQN0kA/c0x6l5v
         kX/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U6mBUsPG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id w9si105932lji.7.2021.07.27.13.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:23:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id d17so23986519lfv.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:23:10 -0700 (PDT)
X-Received: by 2002:ac2:596a:: with SMTP id h10mr10624232lfp.374.1627417390116;
 Tue, 27 Jul 2021 13:23:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210719205247.1023289-1-twd2.me@gmail.com> <CAKwvOdmNji0AbYUiOSfb5cLD+g7YCpXk4oDupa8gTfgzYmxvBg@mail.gmail.com>
 <8a21bac5-2445-2d4f-3639-8660285a626b@gmail.com>
In-Reply-To: <8a21bac5-2445-2d4f-3639-8660285a626b@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 13:22:58 -0700
Message-ID: <CAKwvOdmr7t6jxWPyZ9U9vyFzk4H0toJKMFTSj6SXVNkK057VSw@mail.gmail.com>
Subject: Re: [PATCH 1/3] RISC-V: build: Pass `-mattr` to `lld`
To: twd2 <twd2.me@gmail.com>
Cc: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu, 
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=U6mBUsPG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Thu, Jul 22, 2021 at 1:23 AM twd2 <twd2.me@gmail.com> wrote:
>
> Thanks for your advice.  After some investigations, I find minimal code
> that can reproduce the issue I have had.  The bug is filed at
> https://bugs.llvm.org/show_bug.cgi?id=51161.

Perfect! Thank you for filing that. Let's get that fixed up, then
revisit LTO for RISCV.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmr7t6jxWPyZ9U9vyFzk4H0toJKMFTSj6SXVNkK057VSw%40mail.gmail.com.
