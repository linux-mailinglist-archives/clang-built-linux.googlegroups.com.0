Return-Path: <clang-built-linux+bncBDRZHGH43YJRBVOV576QKGQE64PW4KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D2C2C1129
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 18:01:11 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id b4sf3441817plk.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 09:01:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606150870; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8f2pApg77r3nXzlAUMvEWI/Mh1vlUcKMS0aI3HzSlup6ZlkGEEoNN1pEp/W70dTZm
         vyCObpNBDlE89pazPzPnS/4IDT0JQ3PV6uW6Ii8VCoCZywwXK0hGUeQ8pyxx2UxtBh65
         1vaW/BRVGjjIopADK+8yYetmh+8WPsnQZUOaDApO5DPwI3Ip7HhOYRUv4DuIjoYQIEmc
         kZNku67f2MhcY+XjwaI8Qa52ap6qO3pVdUCKKswf68dRleq6GqB9tQoAghb7gbW4Z/3G
         ERkNJDYWO8NAD1HqNaJpSuuwa7QATeqOJnsHOsqhu/1sZKgvKEQREkqvc718fWsQv/fO
         kwFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=X7J3ZFHy55hMYnTWNUTyrQf1ShuyGT0TObIKObREQBc=;
        b=KC34v/uihVb39s2OkMppKwTAYxDxG7jVc06a6rMymAgJf/jzIuxL/XCt2C3o1SKo23
         mDYmhyifc+PHE+/H9OaCW6Q62cqzc74zj9i65SNeGtUdCPXxSwf13XtDOGq/+U7yqfd6
         sCzInBqQX9VuwGShXY03SlBvramlz57XCdQpQhdx7mmMwuCcLtB59x3BUJm6BOvnaity
         bCY0siGav5CyAVM+nvxVzHOUEW7um6foRkvOQ/uBmROZVYTuJ6HFFeJSMu6q1xyeOhTg
         tjk8gUBUiT/GuBqKR7j9RBa5bEuR0tw9G42LliC6tkEdtLhwXpXyst3N73f7eGKUj/Q9
         GN2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVEZRacQ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X7J3ZFHy55hMYnTWNUTyrQf1ShuyGT0TObIKObREQBc=;
        b=aZ0ZUS9fWkaBwFJ5/6Pf7SX1y13W9BGElIu2e4WoID1iXE4T7LS4gL6XZUmlBGybfm
         EIDsJ81oEiV5X/M9932z7h3ClV5KsDd3tXh8y2Xe6QDmdftEF3EA5DCdz2GiLIRFTkmG
         3pqtrto6c4ur5BS7J36K2SG5nA5M+oV80k3ls7pnVGU+7kFRhrAFUZAET6TjxbNgzDGj
         Abdx2TjSLek0k8MXmqqB25sQ48f94IefmrnD+koBv2oSCkNVnR3UOshnOpSXCVoPIrQr
         D+nOXJV3ZKIC8HuJW+12WuEft88qlKeZicus/NpsywjsUtY7vTQ7L5a/6myDTZFQMXIB
         a8ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X7J3ZFHy55hMYnTWNUTyrQf1ShuyGT0TObIKObREQBc=;
        b=IOH3OfLloY+dPJHuEY++upm2mtiiRMqN55NGm6pDBVrTVvTTmesbZnFK+j3ubV+OE7
         meDnZjeGtELd4jQqNk5s/lwAiiLIQo/Ctinsl9Pah/UeBYdMGyao+GS0DTAMfxPl4v5W
         cVGOveoad70C7qwtiJRjlkqVxEFyiNI/hzMY+lqZVVa6Vyty7ZIe82MN/fGxE3grp9Ct
         EhJ8ejyoythJP/XI50tP89avOub6o9aGmgD/QgdYDaaqSsn+VJvEjhN1UI0PKiHAFlvK
         /WVWIsDT+8FpVygcaopIjxWhO7C8lN6yILzzBr68Lsgofe/8MlKUGg2FYD3HvAcTav56
         TLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X7J3ZFHy55hMYnTWNUTyrQf1ShuyGT0TObIKObREQBc=;
        b=JjYLM18LnVDA2dXZx3H7jbNyVKWHj/Cn2SNRQnrUggqRh6YDiZ5dcywGdrSs9uohVm
         Kk2Z8U9ZQbzklLs94sUfXNDDPvZuQov7ieLQh0ZldBnl33PX2KCd3HAAVzjFnh3ouonu
         iISC6GDzmfZ3YAv+EDe6/uGR1AUrpdAcdBs6NR5nbZ42WaLoeZ/TyBY9lNxwPhc5GG3e
         dRPJrisBN5OYX9NLrOnNznYt00Wc+F9jAcACjCMt5g9uHIYLrgYz/UQ8rkerhajTiXGT
         veVu/D6UPD1fOBw9pELVfwyk9SXn3+33Xp29lWqMaYuGZpGeM/aMpEM6aeqp4BXyJPrn
         PXOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jADvd+cyYmMVBEsUNfudNyIdePIm4nikVdhgVsVXj4TGliJUx
	Ep5yDI0GLagA7Yzsy/MVh0o=
X-Google-Smtp-Source: ABdhPJwCOPMX0yvr4hlJWcHdkN74xHqK38zzuQUBDoPXumjqGs5wKG4ElYYgSw5948JI6pGG/25LyA==
X-Received: by 2002:a62:b607:0:b029:197:7177:df6e with SMTP id j7-20020a62b6070000b02901977177df6emr310849pff.4.1606150870006;
        Mon, 23 Nov 2020 09:01:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e905:: with SMTP id k5ls6473447pld.4.gmail; Mon, 23
 Nov 2020 09:01:09 -0800 (PST)
X-Received: by 2002:a17:902:820e:b029:d6:e802:75aa with SMTP id x14-20020a170902820eb02900d6e80275aamr472358pln.51.1606150869296;
        Mon, 23 Nov 2020 09:01:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606150869; cv=none;
        d=google.com; s=arc-20160816;
        b=jJEPm3GyR43REcz4npoMJJAggy547Lq85whxZApt7rW2B2QyNBhfkktf6ScsT5Ul0W
         fgZDrI0Pq8bP9tHUFWA9XCLrwDE2egUXGftXle7ZkSDNWzeBKGYaJbP/jsAy3aMEWNxI
         KBSa/pZ4yzRuTEV3luxQfNwPt9qF0P9mTWtrzc08XwEIUWv/BkvTTGQwmCLdIo7W4Way
         9dK41dyC/8YrKTBAlFD2piZuWke33g6apfz7EEVXRu4v3YNL6Hda6MJHxdbe5n01Oi9H
         jX6wR0kwVmY1jNQSZMIpJrBLfao9N4LJulNunxB57E895/dyoxNkIdKvcfFbHaWkLX2m
         +1TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C8oS1tqNv7f6RkxFUUnN8Th7AIx+SIEYLcj7Qp63p9k=;
        b=f0D9o2WeIlp/9A6tNWvq6xGEI5iaRMRGZXl0fYD2lIFhh9TUsux7PvEXinqQwJTkTE
         IvF3+SGLt+/+itaixscbmEKAcyD30DzvM6DEbMJZBUhsJ62s4kvtpUs0DzN0g6KdUp7i
         l14UwPGI7ySlq0Px5xQaJ6iVLFAiLapq4lYWtvPkn++jxRR4ijNGzkp6Gy10hso61OV3
         ZwuokCjAPKs2wt5LS9Qz2rYpmyRzMlAsPqmWuMcJ2jJ8pPluCfLHOmt8ywQzPaQuumgK
         I+eyeQSd/klDnFLZncXjg/2PdtH62LM1Jm54xQdo0KRpSC34wOPexjk5ZhMdzg5AL1aw
         A+vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVEZRacQ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id v8si792029pgj.1.2020.11.23.09.01.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 09:01:09 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id r127so12808636yba.10
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 09:01:09 -0800 (PST)
X-Received: by 2002:a25:2e0d:: with SMTP id u13mr381510ybu.247.1606150868581;
 Mon, 23 Nov 2020 09:01:08 -0800 (PST)
MIME-Version: 1.0
References: <20201121194339.52290-1-masahiroy@kernel.org> <CANiq72nL7yxGj-Q6aOxG68967g_fB6=hDED0mTBrZ_SjC=U-Pg@mail.gmail.com>
 <CAK7LNARjU5HTcTjJG1-sQTJBFqohC1O8aAvFs3Hn_sXscH_pdg@mail.gmail.com>
In-Reply-To: <CAK7LNARjU5HTcTjJG1-sQTJBFqohC1O8aAvFs3Hn_sXscH_pdg@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 23 Nov 2020 18:00:57 +0100
Message-ID: <CANiq72mcJMRqV+YZbQtLTCR37ydD=8yFjFzg5ZYMmtH5pK1sEQ@mail.gmail.com>
Subject: Re: [PATCH] compiler_attribute: remove CONFIG_ENABLE_MUST_CHECK
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Shuah Khan <shuah@kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XVEZRacQ;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Nov 23, 2020 at 4:37 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I can move it to compiler_attribute.h
>
> This attribute is supported by gcc, clang, and icc.
> https://godbolt.org/z/ehd6so
>
> I can send v2.
>
> I do not mind renaming, but it should be done in a separate patch.

Of course -- sorry, I didn't mean we had to do them now, i.e. we can
do the move and the rename later on, if you prefer.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mcJMRqV%2BYZbQtLTCR37ydD%3D8yFjFzg5ZYMmtH5pK1sEQ%40mail.gmail.com.
