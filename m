Return-Path: <clang-built-linux+bncBDRZHGH43YJRB6NCTP5AKGQE35EAI6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE6025399A
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 23:17:46 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id ba1sf1171819edb.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 14:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598476666; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZLSWOqo7Qg6Jqukc92FnM4tiuVvenoP8TTHOVdsE6x9U3N2wnuI/Pxy93s6AvnWAJ
         DgIY/v0X/IAn32o5kFhbUfYng3VqFi+WlsOOMZH54EQyo9g5WrI6J2QAj4Nvkup7f0d8
         9wEY8OxhgE8mVFcOR32ZtdkJ70ZKwOPLMMLh5hxn6yW13WMm2KVutWSx8J+TB0w2psRf
         t99P+wndgs7v2vhCYx+ILrvLsSxKSmz8tU8QpuPpZ0axVwRT+XLJLo0iKHmfh4cwxarl
         0jnssWBHI7Bvjg85T9jJ6KbaArnah8sPTOWn7JoRFlv/hieQeSbZnKloCloN/rwKlFuD
         TVwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=w4ogtgfHKyGi0LdddkNaTXjLVjTiGYjONEZfe2LoYiw=;
        b=Ue8HesPE/tUwaQShWBH/oJZjkvjukyAJHqm2IEVlduEOOSxoIvDbcmFDTDp50g24ka
         MEiLIJQcTvF1xm0/UzlSnNtBA3+a1U7aHuGFZwXRyrb4pdxUOT0oj1vyn2qpzkodEC3o
         lduKE1NT+GW3QpxidQIERnI7/hXw5nfUlAzEUEftmHsbguDqBNpb8a/WfzmNVYYktVE7
         JmY/mQimtAq9DES1vAt1+ZW3Xb19iHaNdTa3ohPP0QWB2wQKqIrQJDyKBLSrIu+gogTV
         euNrXLKAwNwit2zjJoOgfGEn/ABaH6tgybcwgS9Wed8OIxUg4w+iRgQmVZqrqeDv/q+k
         PaHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IIv78Dpy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w4ogtgfHKyGi0LdddkNaTXjLVjTiGYjONEZfe2LoYiw=;
        b=l7bzolFCC+FndZHr7F8W6iBQfntUdegc20OhCoxe5O7MggF1GvmhzCFs23Ebq60xZ3
         5NV4RJk5GFagQe20IZSGhvVFJutj901G7s19MJaXRE5NTxPGkQqZ7Do13NestXSHR2ng
         j6gicqMQfDTLB4rWq27R0s/HXCCY3zcYLDsIlLzZVU2G2WbZ9ffj1YxML/A+BykzETrE
         3zCPuhEHMPLHE2Ujr1TnN+Sw2rpucdlfuym4lH/mkYkO/At2jaQskuvGoFuLDn44dwG0
         tAkWLqBuSxAAWgaJ9E7F7dTg1JrTlSzzZ3pxJoQaO9RWoPQg2OnuX2a9yYgsy5Fv9KOH
         3f0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w4ogtgfHKyGi0LdddkNaTXjLVjTiGYjONEZfe2LoYiw=;
        b=b4rnEpkQ4DD1nMrw6IcL3FwGgwPsVN6MV7QvnqafFPzKKEeVm6yo0DPD2Y/Ib/YrEE
         bld4vtEn/YI00JSIXgJj0tgFjZQ//2I7Y0S1KGEjDDxmrOInzOupMuK3w0TOpyRpP4Xx
         XJy63SaXhKyhx95ilbbmI5TA7rFhF4mSGTbh0y7bEUtIprt01GHX5mqk5lj7xGZPnwt/
         laWyt1Z49R78fVXoXrQM3FP/+CFHpaFXKZr3SdSsyAzn0nt2LQipnvAm2uUa5IahOXE6
         en5Omtzr4y1YB1V+2Soe3V5MtwNUGc7lwSdMiXIZxFjgYrZlWoJegaSfPCm/6Fg6xZUk
         htuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w4ogtgfHKyGi0LdddkNaTXjLVjTiGYjONEZfe2LoYiw=;
        b=Ajw64jRPY3/oWCwaWNYTbVeCI16vZcW8dpGlWsjEEYh+bXPvtCLzZ5rs//UGqA54TX
         xt7s/t8q4TobT7wy785Yovsb8Z3VTNVV5Iu/t5+kkcpSrEQILyMD1Zg82jTQ0nIGSliq
         VyGR2p9iq2qt4GIrrM9q87iDOnPUS15OMLZfokvRP5Ms/drckRhkAIDe6xeF1ZanEfJy
         OUUeQPcb9y1JccccsiAaDHbyccMh6CIEb84RxS6IqJvtjwGZ5uxdbIZj0P+T3oBZ/F9g
         IcZOIeWxdqlU7yejXXGfGBpxfhxWq2TI4F1JxiF3TvFyxDdlTZoMKbj5MbnOn8MejSDp
         qpJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tDVPLtDZks2mdjKi8uIJyARQI8RNVlqo7Qa5bU5LwJAiwiBX3
	BNIZmWRDjkVfchiM6GifTPY=
X-Google-Smtp-Source: ABdhPJyU0iRT/RPlHoV4Bfy4NtyZG7+YeRDjFH+SpDQgaA3vvXB1ppk1g9O66QlVuLSQPG3nLSBbTg==
X-Received: by 2002:a17:906:2c48:: with SMTP id f8mr210889ejh.544.1598476665982;
        Wed, 26 Aug 2020 14:17:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d15a:: with SMTP id r26ls86664edo.1.gmail; Wed, 26 Aug
 2020 14:17:45 -0700 (PDT)
X-Received: by 2002:a50:e38d:: with SMTP id b13mr17146769edm.314.1598476665354;
        Wed, 26 Aug 2020 14:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598476665; cv=none;
        d=google.com; s=arc-20160816;
        b=iff3Y4Ql7jB4TgGRRBZo+mPwOEK39sPYfPIaB4qIyqMSGXREK3bX5q309bkDvlOv10
         y4quq9K/WRXvBDjTSF3goGRkeFGUflc3v5QDjpBHQ7Ddd9BiRAdJsI9PV9XF5II5mf3d
         +Akwz8Z6nTPojorjcx1fzWpmx9Owa7ZClg5zesvmIOmBKgrcWR44JaGHMnloeLt8hVYp
         jjKFv8ovzFbGypOAD+vJvf71ZyVyyqaJVRf2As7/m+qbUBXLbjnZeBfKQjP2bxcRECzy
         gkrQ8fpONCZjMl93f+4RFntarDKG7FnEWmeqDuWkbtAsboXxqswXVML8kIDCSqO+4oLg
         gSew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a5CKUQlNHEbAiL+wb+a/1xleYsdvxRkErdEiQo/31Rc=;
        b=oFOXnepER7F6ONGUUu2BlB78iB8H5rUYbjkc3oOkR351lT+GLa06dPG9EIJRFIOWT7
         cyA+iINh5VKAIKOU2urMpYeJNCDzssua0e5skj5u+VWWMcxUN29RpjAuHhty6Z4m/LNv
         FrafgD7mdkAuOd+Ovq5rLFDxChRSqTh0ZGcF3coLPmSg/CqNxbf/ryAb2R+MGHc1Nlpe
         /5WyDR+lg3VllnAt3nIG7YAQJ0Ok12xUA/1TcggH52OsTheNS15/kkMXv7v5P7cYwKyN
         ocxCYzEGdkAbmXYVemSvOuKWw9CNNnzrKEfGbgIF6C4r6WQFFx3U4sZS59Yc03zBeuHY
         6tLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IIv78Dpy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id d26si9514edq.3.2020.08.26.14.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 14:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id v12so3996699ljc.10
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 14:17:45 -0700 (PDT)
X-Received: by 2002:a2e:b0da:: with SMTP id g26mr8617987ljl.264.1598476664853;
 Wed, 26 Aug 2020 14:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200826201420.3414123-1-ndesaulniers@google.com>
In-Reply-To: <20200826201420.3414123-1-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 26 Aug 2020 23:17:34 +0200
Message-ID: <CANiq72no2qO3BBTU3MhVCp4mDLqzMg7NhWGObHV3wtFCRjaziw@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Ingo Molnar <mingo@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IIv78Dpy;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 26, 2020 at 10:14 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> During Plumbers 2020, we voted to just support the latest release of
> Clang for now.  Add a compile time check for this.

Since this effectively enforces a minimum version for Clang, I'd
also update `Documentation/process/changes.rst` and
`Documentation/admin-guide/README.rst` to mention this, and perhaps
use that as a commit title ("implement minimum version for Clang")
since that is the important change, not the implementation so much!

[Actually, I'd remove the particular GCC version from the
`admin-guide/README.rst` to avoid having the version in 2 places (that
doc already links to the other one), but that should be another
patch.]

Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72no2qO3BBTU3MhVCp4mDLqzMg7NhWGObHV3wtFCRjaziw%40mail.gmail.com.
