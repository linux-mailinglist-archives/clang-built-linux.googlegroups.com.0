Return-Path: <clang-built-linux+bncBDRZHGH43YJRBEFS7OEAMGQEKX36S4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5F93F22EE
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 00:20:01 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id m3-20020a17090b0683b0290178cb50bc1asf3625686pjz.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 15:20:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629411600; cv=pass;
        d=google.com; s=arc-20160816;
        b=SAVpfXOELZEn4Dk8I1HapuLWK6SuiyH//zxtUP8mwxV0gRsYBwXG89wrlC2GBvb0Q7
         G9paUySlPb4EiYgsb4M/uOXmCVQKAJyhiZTtL2fwlGhptbaDICMZHE+azComgae8gC8N
         0RkAPJ6K5ia2HfgziHd0s+9IJm6i6euDsIo1na+2gaYLRxSnxVWjxUvxN8Rqc9ItmBCz
         2VSdWnej13LSVfrFS2ZwXB7X98cYXOkQ4ySbX8yMHdsibmT9pKVoJNk3mN3ZMwjdEVRg
         Y+H5h0oBUbwlhUs2wG0xr6holm438fX5km29wma6z0wuoJqJp/1KdKrfH/xCYJFhY0kx
         V0MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gD/VjX/pQ9FKQ0aatTeqIXMvezR/prhmeBLelinK6l0=;
        b=TOod26T1IH8oKJ7MLfnNYf2cYzZ75VN2PZUNX/+CMlx0ZgIUtC7sq8XO0hlEsln190
         pkIeMUIQ/K/GzSgms9RxjNtkoKIPRzV7zFJhawgNmaXU6uGIIQO2z19cEpgqxPdp+b9K
         sbJ0ZII3I0qe3WuJVlUn8YFtW5H+dDiDWEfQs+K5fNHdYRkyBUR0DgJDAlbLbOOSTxOC
         UEoIoKVAmJ4JvIxQRWResucjQuZijTRqUz02z6iqefO9RAqiEbP4ZVg6cQbZU7ITd9id
         XZU/GNrZK7BWQvAaquxKdydBzoLgy3GqgFpMqXC+e0Nd59shV25JPLj0bQcJUyN9SKtt
         5gDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b3hDKsn1;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gD/VjX/pQ9FKQ0aatTeqIXMvezR/prhmeBLelinK6l0=;
        b=GPxBE4BNlXwuJ7dHAFvbcyEoKSR22ineEj1jlAGLBXRewSnn63RXmaJqtFh7JGBNjk
         l4mYd+wE85BmffXfu7nqj4Kq1/hYLdjMOI/C8lK6h4PcS3eEXs1kx2p8Q2P/QHBo+a0l
         ry951LXbh81gzUWh3nuce+ZXonnf2dAjDZuD4oqeKRdFYGNhiiq9v9YM22AT1QYAqFmy
         RRqE3jEXHH/mSN+uzVY8qr1luHNHwHLH1FHCfQvwKFZULlqX4+OYa10KgUTlbP2Xd3rh
         YndZjSlpms3PrjyHepTJ2DFh7J1ZAZtEQCwuwPmKxgf+t6cGRBrJt0hdXo+6RALkeQTR
         1y+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gD/VjX/pQ9FKQ0aatTeqIXMvezR/prhmeBLelinK6l0=;
        b=D+31CL8rwrXpdzr6+JTJ4UL20OxykRpAtYjmPQzWSQFdLs52xajTQcy1XxgzZvOqg+
         tLxNzUVUx0b0Mfaj/uGTfxmMvnxsoyGI3oZuC3Cy2+1XXf5ugX88ZunSOhRM7uhxOsdJ
         2jVdBzSq8QOu8hwufkgIGEwvHj/7IkeELFZmNFZ7T0fZTn81fckyvVbZktXAY93/lG9d
         G7epbdrH9NtfMCn2e6ewjK8atH45srmWrikekgyWUBJG1YFZa+3yY49jYTQWfEuDTcOw
         GC21osFOjW8ahKbpwYQm/UT/QAWz5fyl8jwf9X2vnKywgTL+lnKPUnVcgySGMKIhe+xi
         DX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gD/VjX/pQ9FKQ0aatTeqIXMvezR/prhmeBLelinK6l0=;
        b=gMzx2iT6XW+ZULsIrKaOtPrSLm7qgWUYC2HJth3FQ+w3JyzYd/RFO7BLA1BzScju4Y
         MhFoqfSV+4Ln8j0jTLMIQWzg8wMxwNMihqurcyt0YDNVqNk9cWuwaDPBGfe/K2iiCAlP
         xtaddwLqjsGrGZ+f9OJjIcXDrqs/sTvR6xUP4e8axUx2m1rM6GB1MVwdlDsRV9ICsDng
         RMwoh1R/UnbiJejmdBAtsI4vkM4YldkYzV8gwDt2Alc24xpEw4qaibkUkw2H/4IhK78r
         3FVUyVFsXSRtqOeGdrZbbPTJ4qWkp/nEz6roe/ya5GjI0k9lXeCfHGSvXiac1bjgLmHq
         oYAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gQXFDdV65nhfIjoSsGUfIOt6+df+5ieUW6ruSDdJEh1s1l5vY
	J+aHqg/gDk2Ym5/6N/6BmxU=
X-Google-Smtp-Source: ABdhPJxH9km87+gNaXsA64Qkko4PJGFaTN5IcAD2HHUbLa6kSoU+9Twkzjis0PrghgHEXOrDnnyiqA==
X-Received: by 2002:a17:90a:c89:: with SMTP id v9mr1049265pja.175.1629411600464;
        Thu, 19 Aug 2021 15:20:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c9:: with SMTP id n9ls3527380plc.0.gmail; Thu, 19
 Aug 2021 15:20:00 -0700 (PDT)
X-Received: by 2002:a17:90a:f98d:: with SMTP id cq13mr1067664pjb.211.1629411599924;
        Thu, 19 Aug 2021 15:19:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629411599; cv=none;
        d=google.com; s=arc-20160816;
        b=HseGy7iQghEIxIli5zFywZUqiPLVoZKp+sNSEhz65r1FROuQLXMckkBwGH6dmxfsiv
         kNThGz2e2ggezuBOChcDKhRHqYsYjp85rOhCCjoluWmsBY1JjkMItr8rWaYmN4LASE9z
         IrWfimwKphN4edkGX03G+eJFKBY9mGWa1ESh3WuAAR08PZ5iFFiK3LCjJKg1LPkzKVYD
         DoWniMsL1M8y32FTh22kiHGv4R6NK+PxUWP7RP1/9Q+UD8fa/dKZolt7yQqt3WoJG9DR
         rCbWS+BpuGpWFh1QHwvZYyyYIcL6qzh/95aoTVP/xdQz5oyMJZkso07Q9A//0Cn+fPfL
         /66Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p67N2HxCgAHqtnjLzPV50i8kOoXMocmzpIDJp5XC/LM=;
        b=wNSOpKaHnRP8Ulvl7kFWHGVElWm0Xjs3oCnHOIP4Uihh/n/UoR+27HThWMCbJG3d96
         pJO3bcaRM4/sFypAaWmcD2OnSeYgv0J4V2fFKuqylPv/f8GA+3K5gUcZ4UNw7AJBRyBi
         MhjCErjLhYf9Z+0x0JHeLXe8NTf3k4V9GjjzRkEtPr1JGpIkz8jVxBC/vNEi/8Qia37o
         kE6Hvq+CEQQHzlL7FE9Tf+MGuEAczo094DBxcOez31MQHhUG6u1sLdogKPav2LWgEB2g
         GXI6OvopL6bzHI8W6y+16XJsRtuDBx8nRvpdGudSMwhjMR9XJBkW9POBLFf0fbMXuiaw
         8alQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b3hDKsn1;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id r9si182372plo.0.2021.08.19.15.19.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 15:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id b7so9705793iob.4
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 15:19:59 -0700 (PDT)
X-Received: by 2002:a02:c80e:: with SMTP id p14mr15127917jao.8.1629411599484;
 Thu, 19 Aug 2021 15:19:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com> <20210817002109.2736222-6-ndesaulniers@google.com>
In-Reply-To: <20210817002109.2736222-6-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 20 Aug 2021 00:19:48 +0200
Message-ID: <CANiq72n7=B=j94Oge7OiV9tpjspbBJr_0kEQCeB89cK4-zDQ3Q@mail.gmail.com>
Subject: Re: [PATCH 5/7] x86: remove cc-option-yn test for -mtune=
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b3hDKsn1;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Aug 17, 2021 at 2:21 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> As noted in the comment, -mtune= has been supported since GCC 3.4. The
> minimum required version of GCC to build the kernel (as specified in
> Documentation/process/changes.rst) is GCC 4.9.

Yes, please!

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n7%3DB%3Dj94Oge7OiV9tpjspbBJr_0kEQCeB89cK4-zDQ3Q%40mail.gmail.com.
