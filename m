Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDVE5KCQMGQE2FIJUZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CF839C19C
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 22:50:24 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id s7-20020a6352470000b029021b9013c124sf6641538pgl.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 13:50:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622839823; cv=pass;
        d=google.com; s=arc-20160816;
        b=KGNO7LgJXM4zXR14+FGx4laAfrggZbGO+XtJ0OXbGpBaj9hVDyaeRGOD+H9HifjxvN
         nz6tfJc2hXZSJgInPBPCCH18+V+vr35lMOjcQMv2ThTydK7KyqrcQ9N8uhE+gynB8gn/
         W5vEeTnEYy/wgPYfpsYbEgV1Q5y0X1FxypDNh795js9IR4l8aCgqoNUV555FzbCe1otw
         0uKQ60ixNX+i/sqX0DJMWDiidiRgYa70iCLKkRouaGOlaFOgYxVAjJe8+50uPoZlyZL6
         yRLxwvldrpuHnl5XVJwpGl4wncKyCN8XKBLAKOGx4ppGLYxglNCe0XF1M34CKqwP/F5g
         SBDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=jkjKWj+BHNcKC7+aKKbtw+uZcNFQERaYE6f6saCV5CE=;
        b=IeGTUV4ih6igcmIJe8FHOv7meqkrIhqA3HLH7FC3mGbirfRvNo/krr8Jar915nodwR
         lty60G8JL6eo4Vxl2k/xfeeZ/VDTFql+hE6HApBc9YmmO3wecu7pYjIy9OuUziCBT05I
         Y90TJjoZodiwr9aW1BgD7tcZIF/DahsVds5OXeyf48WWYWPUNDl0vQaJ08cORZRw1O4U
         KVd+JHKzf5YEC48afIXrT8Zrps4Jv7J/uqPBNy+70WY2XG38+hNrjtNM1FAU0mzSKZxu
         GSJHRJuVRQ8lKF8y7peYUrSQwO8NPjSqWsm5+CBsSc0gVxTWFsK5HLJoUXl1dqohb/YF
         d94g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VQdOe4hy;
       spf=pass (google.com: domain of 3djk6yawkaccqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3DJK6YAwKACcQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jkjKWj+BHNcKC7+aKKbtw+uZcNFQERaYE6f6saCV5CE=;
        b=DS4nsUIv63DB8GVKdj5waZCiMNN0n1eCzC6Gy9X8cxlHziP0JSdx6aFvTgD5yLrPpk
         Rq/xhfkb7VmBD3Uz16gE/KhAsMKBHySbSO4bXsJIcJt0qM72FoCTzdUmm5PwSVYVPXOF
         qeXu+FRG3stoWX9LrH0sA7ja2nJcWjALJKfxQ8XtDtCWSh4razQCiuH7V0Bu08P6qL+p
         97L+RYHBbVvcXSs5e6Ll84nDLz5Yp1StfQZdBDK8IU9dRhT1yc/bwNiuOsvKwrHGvtaB
         tRWl5PcppYPYJtgMYFORuLm0fFluewe7Y8CJ64DlkkuNN6PW4FHzsGxadxeSloVvqJB/
         zozQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jkjKWj+BHNcKC7+aKKbtw+uZcNFQERaYE6f6saCV5CE=;
        b=CazMT8CK+X47vcimtTosN1qQwGqShxTjQ8gAR6furkZij9e5A4f4WFQcpC0uW59GYn
         2XQgFy/ryGyV8oE2CdsIpZe06J+EJLWxu2tVIcB8Vhi1c4H8/LoDzizLH1/OAzFxCpk8
         Y5NFfGhF4jBU5zjTsCUAAgQTALVBV1e71JMyHe1H4S41vd5TCw2Hh6rCrcp8A6wtnEiO
         jUEZ7MX1bJTWKpYzugaZn6yuM0XoWNTwP2CCpk3pM9GRcuQbltKfQ2jQKJUVCj8ug120
         1x6oYq810MCimr0OLnKB1S7mPr94UvfqSyStYehhHmvzInVzHlszuwYoX5bDvQ8YdqZO
         6Ymw==
X-Gm-Message-State: AOAM530/rNfXkbZhfdxFb3MVaLHd4kyKI+6O1yDDGGxUqCnyiyZsImQ2
	TnSQCAANha4aGZhgT0j6OW0=
X-Google-Smtp-Source: ABdhPJwaYTZy7r352H9vBOSm7aZYP/FgueHHiSFly6GKM9WX6LjA8r5n8y3zMq4K9R7NmFVsXMFo6Q==
X-Received: by 2002:a17:902:8493:b029:107:15c:271d with SMTP id c19-20020a1709028493b0290107015c271dmr6017220plo.68.1622839822098;
        Fri, 04 Jun 2021 13:50:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b185:: with SMTP id s5ls4468929plr.3.gmail; Fri, 04
 Jun 2021 13:50:21 -0700 (PDT)
X-Received: by 2002:a17:902:8602:b029:10b:df79:d7ca with SMTP id f2-20020a1709028602b029010bdf79d7camr6072165plo.56.1622839821462;
        Fri, 04 Jun 2021 13:50:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622839821; cv=none;
        d=google.com; s=arc-20160816;
        b=IR506fHjkE/v6jXh5ztvUz9djVN7ei/9dS3PlEoHTdBDhJhzulmqHakVdM38erOLGY
         SkvwUw7eWdIuHx50/uDeVYLmVNe/wdgvPBPo3bEDqYUkusn0lg0gIdXHXZydcaLXSTNU
         V8ybf5QE9gdyS2rN1ny33fOF4TzMU3v+tDvAcv/fqCiG4SAnMpLIeL6RXisGNfLGikZ/
         4WoNHrIPSRHx4KqmX2ZbpyFvaTDcTa38XshofXEwLjnZQe2xJ0xa1DAgcrvY1OMS7bKG
         bPNOGsSekRchk+zmz585OdF6xDqvHALxzIjiZrmK1r1JuoifGUpNsICK7+QaFzNWiHHs
         NQBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=CFNkGJMFknWFYDKUTL5q74oSIb8W2HSb6ukDUBFf34Q=;
        b=IiFLck9FRdpRlPbhJ/lKUOvUPh0twOK+OivvSspSTWBDpiPv5MtqxSaofJAQFj8EtN
         Hc7dFkv17VhiFVNsFWP3szuJTPcbRPLkP7/ckhfCLo0gtDE1/KXOvebgPuM7cZpdfLVy
         6Ai1VXHGuX2hGxPeH+xv9fc5z84xVdFz5CeDl40809x+I5H5VXYYr+orD9A4aM+yo0Eb
         inzjrFRl3cquQAkWDrvgexez0gGM2Flgr8uO092BPbV8/QLHZ7pVditQxC+ixK/7lBol
         6QJjgOBRvjIZNUuZIIIgclx5X/+B5ROZbHiu7iioWE5BAzR1AbbFbJHO6Iwkvf78ka0n
         1qeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VQdOe4hy;
       spf=pass (google.com: domain of 3djk6yawkaccqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3DJK6YAwKACcQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id f3si606159pjs.3.2021.06.04.13.50.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 13:50:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3djk6yawkaccqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id b19-20020a05620a0893b02902e956b29f5dso7350836qka.16
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 13:50:21 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:c4c3:48b1:987e:8e6a])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:4e68:: with SMTP id
 ec8mr6687875qvb.62.1622839820623; Fri, 04 Jun 2021 13:50:20 -0700 (PDT)
Date: Fri,  4 Jun 2021 13:50:18 -0700
In-Reply-To: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
Message-Id: <20210604205018.2238778-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
X-Mailer: git-send-email 2.32.0.rc1.229.g3e70b5a671-goog
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: peterz@infradead.org
Cc: jpoimboe@redhat.com, lma@semihalf.com, groeck@google.com, jgross@suse.com, 
	lb@semihalf.com, linux-kernel@vger.kernel.org, mbenes@suse.com, 
	rad@semihalf.com, upstream@semihalf.com, x86@kernel.org, 
	clang-built-linux@googlegroups.com, nathan@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VQdOe4hy;       spf=pass
 (google.com: domain of 3djk6yawkaccqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3DJK6YAwKACcQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

(Manually replying to https://lore.kernel.org/lkml/CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com/)

Hi Peter,
We're also tracking 2 recent regressions that look like they've come from this
patch.

https://github.com/ClangBuiltLinux/linux/issues/1384
https://github.com/ClangBuiltLinux/linux/issues/1388

(Both in linux-next at the moment).

The first, it looks like a boot failure. The second is a warning from the
linker on a kernel module; even readelf seems unhappy with the results of the
output from objtool.

I can more easily reproduce the latter, so I'm working on getting a smaller
reproducer. I'll let you know when I have it, but wanted to report it ASAP.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210604205018.2238778-1-ndesaulniers%40google.com.
