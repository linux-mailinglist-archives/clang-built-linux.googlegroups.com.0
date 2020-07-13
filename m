Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUUFWP4AKGQEL7INWVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C7D21E155
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 22:23:48 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id e80sf10105085pfh.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 13:23:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594671826; cv=pass;
        d=google.com; s=arc-20160816;
        b=jba2e7noRCL7oGfIIn0kohJm396GPP1ZIVzymWqw9jWkSTro9Ar+gcyyONdQZNr2Xd
         VFuYiig9VXipxYYMkzfOMJDFT2dGiuwjb4d/8wesD+R80XKRAbHqCRIyauyiKpFDDK2K
         VlnyaG+LwZ6N6+OXd8ZxNOMcl9vdVOikM7hB91569tTC0FSa+jdbsDtwxiWQy/m82ExQ
         doyjX3rg0aS6LogQdjfUS/10luxf1Qr6Lb4ZqIwe1s3oWrhgeG+vD6WQdaGASwIYamk6
         yOe+Gt194IFwdO9ZswvjmxvlST0zDkmc037VxmZzdIZckCFJ+n7NkZnTzFIdvxyiuxJw
         VEHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=DMI0DTuQH7WWHv6fIwhMzF9tmcdKxIWlXioYuMlh5+c=;
        b=lGnphfjlitEolpr5q9whjV5EMxBnSCjju8WQW0zncs2Th6SxpEiPHsbJ3cdZPKID7k
         zprFi6Jmjuvkd2FFobKgw4fkJIxPtoqnwDumxoSRvSs24AX9ZuWqJSG4Y04xw1m/6bQu
         gdo+JVYR0Gg7MUZ4OvVFZ84Mvo1knRVrAoeQotOfmHdGPxfd9jzy6Dwqq3BmwJzuP6K7
         yd7UIjdDJuU+DovcDQo10jF2gzLIpR8VqUwrbIQMiX7Vv/9Imu4WZk/n7aBXBVrzGjSi
         Gjn+CdYUz2T87TIYDdAvQfEViUxAm00LOFi9I56WEDWvaIzN/AG8FQ69zNCO/T+ME/sQ
         VOjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pE+HnI7Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DMI0DTuQH7WWHv6fIwhMzF9tmcdKxIWlXioYuMlh5+c=;
        b=QtRsO+UTNkRSnyjQJcb3sYTrRFbWwr2XbeuXYBwVEIvn3Sq3BvNsJoTyCx1edhbwEg
         Ji7miGRb+uQkhrjiVp94Cc9nOwFfXQnQn0x7yATWgWmpEcS/H+tYVcPDSZ2gVt3iC77r
         xBeMtlSYG0XyX00lPdaFD5lOeexVq3037Do8lcwSp/Q2Vcf/9nLY5F5qIv+qn5JK6p3Y
         RbTix8lWEuygYT0YlI7DQw5zTKBDes7r6go5yHsFBNn+Z+DuIg4YjToyThdWRiIwg4As
         v4Eb0vqtgDDd/Q3Rul6JvzDPJYe8laWUOYlDvurYTRKAAjiBaiy2JTONDVRq3vQlazSH
         xuUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DMI0DTuQH7WWHv6fIwhMzF9tmcdKxIWlXioYuMlh5+c=;
        b=kcdOkwsaLv0Jj5itmu9i67iBWW2rlgN7f9t+tfny/0qW6sWk/u++P98rD3y0p+w799
         ItBPKGXPCVp7KmkpKWi7F/MeyrOuCU8q2EKggI8XyOG6tawHC3sK6qk/kY0g7v4LWRAG
         WWb4DZK9gtG46nmurR6Gd+3WKusANYf8jdP70CmnejAT65FbKw/jdHUqRRHf5vfkePul
         AheNgu7N4KGLVALBE8aoZK5nxA7hdUDlLJwUxtwkiXlEjLjnZzhAHBxghWtaHKlqeSNi
         u43h1VaE5B7+AYGofT6g1n+wbAcnVUXuikv9PVSqqOGcGuBYY6Le/C9LqplNMuiJqtCL
         SXVg==
X-Gm-Message-State: AOAM532eWSRxbIwzXH9sN10ih8K2Ly1qNidx+XkHAFP5BLw76Zl4p7SP
	+uueZshkHqAk0vvGSsdL9dE=
X-Google-Smtp-Source: ABdhPJygbqN6IaTQx176CA3THz+eh0d2JlgBjwkzpETjpTO5eawIqVZ/+SJeUf97Mz4WgUlBx4YHAQ==
X-Received: by 2002:a65:584e:: with SMTP id s14mr681499pgr.151.1594671826664;
        Mon, 13 Jul 2020 13:23:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9344:: with SMTP id g4ls3396325plp.10.gmail; Mon, 13
 Jul 2020 13:23:46 -0700 (PDT)
X-Received: by 2002:a17:902:7c8b:: with SMTP id y11mr1052786pll.53.1594671826258;
        Mon, 13 Jul 2020 13:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594671826; cv=none;
        d=google.com; s=arc-20160816;
        b=UsxGOXKzx7P5pFnPSd1CXe+q1AIVQTz7kWlJJH/I0KKYvpZXWP1cD1Ftfya25edzE1
         G91sbqvEd/V4wMoiEV471aKltxXTzViw0G+jevH/zB3JuvPX2d3ZWyjlrr6JQ6Vnwnqa
         PwuOExOUF82Wa2L9ousVAhqHWyY8dnv7+mv0Ia2LonWUrSb3wcVfWgJnN660NSmciOzm
         Ja2JQc3aSfiTX1TIYB6Z3cE+WWzQh3T3PSOPKZtH7YvIkV6o8O2qx0nHwo+OccvUKMKk
         toeWVEwG/jS+D8U5WspZThJ0mDJFKCZnbDLbKZj186cXso/Gpwicx6Sra17Lyse7btja
         dW8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=gT9y8osCKgopQJB+AOp0exwXmR/r8cpSLVU5w9SmVXI=;
        b=ieOjwSguUStyOZ0giO+XVN8jCuMrnFhzhxaJ9LvCbX/TlhrMXBYL0TBdid2CRpOY+e
         P+zJNWC1Y9QNyKSTvGFEn2WQoTw9OOcZ0smYazrRO4WpdlhXXN4qYGtDcRwNsgJA8NWf
         X+bCVDW1nvuprtoKJt/91YmCZuZq5D82bh13S0D5MKoarpvNHw6bv/Bmy1fnG6PDiHJR
         KJbYPzWww1iTHsGRArvgtEQrvRhT718YxlZFmGr1UxPta/3zloTSRwBsvyM23aLhAhxU
         tWDPVoyYF+04ayYvzIgJlvnlggq8mEkn6t1co1TthXy3lVCAZvIPf83ah8bdPkRQ5N7G
         Ivhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pE+HnI7Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id a6si717237pgw.3.2020.07.13.13.23.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 13:23:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id s26so6530427pfm.4
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 13:23:46 -0700 (PDT)
X-Received: by 2002:a62:86cc:: with SMTP id x195mr1366007pfd.39.1594671825670;
 Mon, 13 Jul 2020 13:23:45 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jul 2020 13:23:33 -0700
Message-ID: <CAKwvOdke5KOS7KLBpDF8DsE=eo7T9ZTvKZBToMuLyVX6LViL1A@mail.gmail.com>
Subject: clang-tidy and clang-format at plumbers?
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pE+HnI7Y;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
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

Hi Miguel and Joe,
I was curious if either of you plan on attending Linux plumbers conf this year?

I'm trying to organize an LLVM micro conference, and though it might
be of interest to hold a session on clang-format and also clang-tidy.
WDYT?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdke5KOS7KLBpDF8DsE%3Deo7T9ZTvKZBToMuLyVX6LViL1A%40mail.gmail.com.
