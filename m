Return-Path: <clang-built-linux+bncBDRZHGH43YJRB264333AKGQEHPMTUXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A30E21ED1AC
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 16:06:36 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id y23sf837251lfy.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 07:06:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591193196; cv=pass;
        d=google.com; s=arc-20160816;
        b=fW8c2PzdA/2ou8pDfGj7SK2pAi/KR43Ktf/PqzrNkOSmpS9HJALD7vn0qGY7NkYYsl
         Gi/c7DQ65I2x2RhKN4zOOiAU3I59XGut+yxs9+cOuR4jawHk2SFZ8nS5vZ4BArVlrxzH
         0anVznbZ8jiGuk/aayocodE7Lo5RdTW3K2JTLPGxHMInU1+3eoGl8GPpN+bt6lgjDbf3
         VGh1FOpMQpZkLlHtivMXB8g8/7mAYQ7vNwrLrrEfuyRReZONfvVhXfQL+q9wGm2xMsIF
         xZXdYC7znR6j+Lpdd3eyHH9P/AmQhGBtyWMUrP6I4o05WxA6f0E2oFGk0mMooa5b7Wd8
         H/bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UETLykw7FYCZusk1b2goMyM1o0BHtYxcIBdA9wbWbOA=;
        b=wyECtDbttGe5jKcA8PAi/h4gmqOxkJaNT7Kj/MJcx/HxnBWYpdvjwPMB3ujDKPqiI2
         M3qWMHWDCVvYJRF5C2VoIObSFVkrqeMJ/wRI06hqNxq3mZmKUnvMfsSzRNEUYaxaEK8v
         9nAPY2bySJp6bMcknyuI3iGH9Vkb1mIm7qgB9H6rKBQ2/StKhKHKMvqPHSo14mbraNdJ
         3TEk01qDBPjvPvifudKf/BQsGZxNIaSuXDq5keO6J/dq3OPzCnLEpC6B/td/dZPxwAtf
         /uWxmP6F99BOV/QNXIEmZEo8l0iJqmzyN799RqVl/7c6mEjmB87Tf99SpiZvESxSS16z
         DPPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rajZp/2F";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UETLykw7FYCZusk1b2goMyM1o0BHtYxcIBdA9wbWbOA=;
        b=UHSlZe379fbFcuQs5qttjTaWDoUokYmmlpMHK33TET1ZCPyDPhdR8Xinjr0pWEoTIx
         duW7FyYs7avmODGMukKs6ZlXpn3dGQ5ld8xCztqdtW5pItNRc1//bWWHXcGgpScQPXIc
         t/YpcJ6/g5VgIkC0Vi7txMylSqEEXCFSGBsyhDeiWIqBW1asLGzP/ebPNgjWMoX+3Rv/
         GKJ0uJ8rEnKAeZktYqkca5X+rs7fGrCT+k1HPCXQ9mgbf8LasnBgUTQgXIb5LcuLeG3G
         i4vLc0NWf+fymunWCM8X02FJa2IVY6/HCwLdcxb4OZiuuKm2iyFeLK79Tw7wBGYl36ah
         SD9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UETLykw7FYCZusk1b2goMyM1o0BHtYxcIBdA9wbWbOA=;
        b=cf2v2XkQyuDXGT7H54DXNJjqcuKuKViBEQrMoudpXCpLu4U50TM+ViMt9ViNpBLf8X
         Rkq7qzboI7WDBmTPLmwr78YHB09+btFc2TK+vGfrC1t2EVHzII8H4PBsgY1K9nZyuymM
         jRy7I3cGBUVAyOwfg168jzHnAJSAglue9ElkgaK76U7N2zeeklMdyZxJ452DPgSD5Lgi
         Qj95nkEDI5AOG9DI8KNnN7YkGn3MR/xXdVGd3DI7V2g/w1/PcCoJN/ieljuk3Q1i8g/n
         7k6ikiV61ecEbRhDgScGitAak0se994AsxynPL0/fy/orxQGtHa7m3Nj6qiVe4De0Chb
         9xMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UETLykw7FYCZusk1b2goMyM1o0BHtYxcIBdA9wbWbOA=;
        b=oopwvYYTmybGx+inUiuS4TirUBJu0/Z19PYSKoDkgVEapqHkFzwNoPYNoZ0QvMcbpT
         Wcda+Mi0+OD+aKS9EDVeh/WF4yySoS+hdHpWzlsQz6J84yZzhFvIRCDUMTnqs3BMrup7
         XtLNqM0LdWUqPhUPENtHwOknHUQR1RdytjnrkYq+C70jlg1QwKxnl8e7evFJBfZtuwd0
         vk58QF90egz0VBDa+2dIQf5SnSM+wn1ScCbzmVhSXNOHlhq7//29wNFc+Dz9PdPKTz/o
         mymLcZJEz+esnG4yA5y3tivAXZSD9FlX7orLYCqlInIx2nMm2B+0XsbF8ui7JA+Ykp5H
         GWyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332ZYJvu5V19n5EG3XX8jFMo47iqWj1XFhrgQTqH4TG4B4DLuWX
	sSK2CZLtJYnIcQjzbfwd4SQ=
X-Google-Smtp-Source: ABdhPJzuP60z1Sx0deTA3KkDw3MTTxQsGp2dS8ayzXele2UsIsF2bHgzdDUP5g9g09IsLrW//JPMZA==
X-Received: by 2002:a2e:5415:: with SMTP id i21mr2261812ljb.233.1591193196006;
        Wed, 03 Jun 2020 07:06:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7d6:: with SMTP id x205ls739202lff.0.gmail; Wed, 03 Jun
 2020 07:06:35 -0700 (PDT)
X-Received: by 2002:ac2:4a75:: with SMTP id q21mr2542252lfp.190.1591193195288;
        Wed, 03 Jun 2020 07:06:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591193195; cv=none;
        d=google.com; s=arc-20160816;
        b=nhnnuy3wqwmbuJFgItx+rLXWavM0xSp7N/zE56u3oA2BJ2oWR/mH/ddXJC8DBhRlPw
         uK6WmCqAw9e4kkGx6HVAJgBkcxsISYG/aH/qV0GJF+wcjvcm87fUdWRfhb1fOds10v26
         zackme5jrxam1bw4v2qHvwLz5scIk3nrhNBleTML5J9qJTymRPrSwamwduvLqLh1A5bK
         Yr+8cn6yT1r3fsxZgODQb8u9+knk5MJ5dpmP4t/aUsCK4Qdka92oClro5jd4Jg41jutu
         XXn3MPJJRUEhI46vtfu0QfYAWNaKkSWYB23B9JcX+J6UJIy3gF81cF03JJkDLVqtI2Ed
         5jRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qCMwwfFVZYEgkxVHE4dr/ePj/4wKMJeH+gSl8PNTdQ8=;
        b=C6wX8++Byyks46cwqFS6x/dgYcnt556tLvoF23X3vj7t8XZuZhwgM2ef4nWAstK3ct
         sEEJ0Q8SlGyjqhjZPQs2V1ToDZFXdYH6HS8LY0rd/fW3TVSsOOb4q0MNxPLRkAm8diST
         du9pzd9xIHogyLpYWhqN0QSzzsL40ovimKVszc+TLLxzXdNmyzeTnwpqobvJ23AeTDEo
         vPu0i6v+Zai9gq1iwBqoaxlSJPEMGGAqeSoyexv3q7PmOXY/u+a/aV7lPhPWco7mx6Pi
         DXbfJK5OO/xShDEDhHx2UCaE9yE5XZ5H3dD+rDrDcrLc2n9xuNObKfx+NFdbsP9dgGo+
         F4pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rajZp/2F";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id o10si124336ljp.3.2020.06.03.07.06.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 07:06:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id o9so2889236ljj.6;
        Wed, 03 Jun 2020 07:06:35 -0700 (PDT)
X-Received: by 2002:a05:651c:11c7:: with SMTP id z7mr2275345ljo.29.1591193195076;
 Wed, 03 Jun 2020 07:06:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <20200602184409.22142-2-elver@google.com>
 <CAKwvOdkXVcZa5UwnoZqX7_FytabYn2ZRi=zQy_DyzduVmyQNMA@mail.gmail.com>
In-Reply-To: <CAKwvOdkXVcZa5UwnoZqX7_FytabYn2ZRi=zQy_DyzduVmyQNMA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 3 Jun 2020 16:06:23 +0200
Message-ID: <CANiq72=iNHeLc3aqt0NrykucHsTPwmBfnsyaay3VYnEhV9T5ag@mail.gmail.com>
Subject: Re: [PATCH -tip 2/2] compiler_types.h: Add __no_sanitize_{address,undefined}
 to noinstr
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="rajZp/2F";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Jun 2, 2020 at 8:49 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Currently most of our compiler attribute detection is done in
> include/linux/compiler_attributes.h; I think this should be handled
> there. +Miguel Ojeda

Thanks a lot for the CC Nick! Marco is right, since this attribute is
different per-compiler, we don't want them in `compiler_attributes.h`
(for the moment -- we'll see if they end up with the same
syntax/behavior in the future).

Acked-by:  Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DiNHeLc3aqt0NrykucHsTPwmBfnsyaay3VYnEhV9T5ag%40mail.gmail.com.
