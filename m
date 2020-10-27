Return-Path: <clang-built-linux+bncBCFPRMFUYQPBBSNX336AKGQEKD2T4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EAB29A385
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 05:02:18 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id o135sf39131ybc.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 21:02:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603771337; cv=pass;
        d=google.com; s=arc-20160816;
        b=vkxdLZwAiixye1q5GKRh7NAblD5KYmpSVmDeP/2mH0vBXXx05FnS0+QXY/aFoIISUB
         5Y9SPu9mF/WYYXaZkXVYVy3BUzwuaK3kEy0m29OmIGa5dBq0EEkVdSyGALB9RqvVZVr1
         gLyTG6uitqaNZ1Mhduvrx0gDfcagrGZd76YlsekYfhgjuOa8tpcTHoxeIVi+36N3KoPu
         qK/GNkFOdbprTAoZ610WgJixCGTHv5j/kXXDn/rgxnP+dMF+shcup+1vHDWqbMCEdgNV
         LPf9d01CnXnIeIknxxF92PLBvWLf+0wz0XkfOLzE61uo4trUgJ4F37ukL3uyzCHLyRUw
         dtRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jjfoP1KIAtVuDEe3PlvWZ+ie6kx6jwvxvhkO+sPGZOI=;
        b=s0wS3jMpm+fLsEHrhsu0KIpCs6qSjnwO+FPoIFVV0U3ktmCSLS6EQbqQlh6k7Nw6bh
         3KNCDEwt8I/X5eyh4+TLbKFKoe/HhVQd2ku/SJhSPMK8AtmN2R3ZGYGVSU1PZjDgacPH
         yNHmbAi0Qla8p5l3yXIe+Zs8O+66PihXxAozQVU3Fm7S9/E1WKimYUTRhIOY6d3SsY5P
         S/AbIUdFDrk2D6euuGc5KiMQT2bfiwwY18oCmKF3eSrMdpdLXEGD2O81VU4R4SHJW/ws
         IV7TNjNKCFzdq7Ty9xaZuMAXsHhyMeWNUIyw/Bv7JTpzXBHMSiIH8ZAKsWMrC4ybiwjr
         97cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A8gZPcWp;
       spf=pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjfoP1KIAtVuDEe3PlvWZ+ie6kx6jwvxvhkO+sPGZOI=;
        b=ilgTkJU7dO+21nf1Y5L9dynSRqTxgHM3S3WICussVEnvmwp0tU4Nw3rnL46Vupy5Bh
         P9DIeyW4laUV4B6cB8iwVbMtc3x7lraLNIOsLvGcpYXhSt0BStQoXwDOVCp2cKxKIaNI
         4E5oRr67US9ED/joHy8hcElIisQshSsMvtR/rTk67i5DndNBYBvzr11AwuuRpeDJSI9L
         zbBHC7IQU+YegDMCwRPRecXpiYpBc2IYwwqEjZjkqNDkEXcPhrJ3+o89RkzLXek9eEE4
         d0dfVn/0jT1OdVGsfxw6FZu8T1iWnp4xXXTWv+XfbqVwzlfBtIHT0IqGsNcgb9epX/IM
         lG+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjfoP1KIAtVuDEe3PlvWZ+ie6kx6jwvxvhkO+sPGZOI=;
        b=Hr6YJVbS+iOgpjnwJBCf10praa8ncXp697ROnso1gJboHvN7LbJLvVV7GPvq71i8LR
         gK/g6NmTIBsjbCuxVe84AZyq0o7R1uNLvqDmvC5bTPoT+CIiHjhorj+OoO/fwGl4shzL
         gQht2GZwZPFImoAo/snNGRqcgvygflu+W792SSmv1hZMGPNkMD3Xsfpx1NCc8oq028uy
         C6RPbDYIRJDldsIsTrm9YYf3gLQIQusAV8I98YG6PipdcsMCDi2a+y9BoaeONDYOXkuk
         3MNSe9SshsM/8E/LoGOdsWRSKdV40rpuGmTMzzu9i71Y3kJXoatVU0QLx86TuqSy65RX
         tRYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjfoP1KIAtVuDEe3PlvWZ+ie6kx6jwvxvhkO+sPGZOI=;
        b=uKUZ9mBm7mUEbCPkn2QMithYCMelsGqQkK2ofYG5AusbpM42gqG6O6iBl04vB5jiMQ
         R7wdxtaT6dTmezU8ae/GPBickbPRustvwrTeKFcRL8XM/8G4r+Cie+WTt7hPXYC2WXxV
         OPsi7n8yTmIxSUr/Crni0nmhzIsQOfYFq8wswdww2pjYgAh8L6q7Xmz6JEmQBpf2ckqM
         WwgiatC79sG0c7QZ41jJHLPlNr/95PjCHaoSFKz93/jbFhq7PkR6WHT/uopXhlex/Owp
         5P3o9r8/kgMo19v9SSIeFOQ+EiczkAI6G1ja6V5LJA+qS9ZvumSiqusRmvODjxuh6nF+
         69UQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FwX7MWv46/wsDjpCw2SU5BMngLEFO6eOZAm8L6/Xi54P5Dccf
	lQHChxcNCwpV1ohfy/hqOvA=
X-Google-Smtp-Source: ABdhPJwv15nK1drkZUr1l9rab9Qj3BoWmexVt/fVYpNNLwCoc3/3qg7yz7k4XPWWtxRtupKCBdHdTA==
X-Received: by 2002:a25:2ac7:: with SMTP id q190mr478397ybq.426.1603771337556;
        Mon, 26 Oct 2020 21:02:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:4cd:: with SMTP id u13ls133338ybp.9.gmail; Mon, 26 Oct
 2020 21:02:17 -0700 (PDT)
X-Received: by 2002:a25:ae97:: with SMTP id b23mr543089ybj.26.1603771337091;
        Mon, 26 Oct 2020 21:02:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603771337; cv=none;
        d=google.com; s=arc-20160816;
        b=yOzUFZi/TNj/PiF5aqHqb7cQzTkYetEsTGahQk2GMbRzEf/UQnWGJ420USo41W10ys
         6fA6oxN1qMMa1gOOsqpulZmXLTlugclYviS6U6e6zQEEG4xlioLw6EFBB6eM/eZlOJm9
         zjRbCxW5Iqh5exOE9cfSNYaGTL9/9gA6OO7ezN7DR+3Nu4v9X3lgSrubS79hOom+um9x
         08fFZ9wDhjsyhTwD0UVqtj0LEWkHNp5tfkkX5eoyEVCcgO+TmctUUDzNmFhOHwu5IKM9
         lF33JZU/pnfkySPmGtRinmOGnHksiwr64EfWAQRLPyni4kURZPYPWP03Erj/m7jjc5+C
         OfWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kEWfF2+wHDXs51FoMh8BpSfr6/k+l32KvU6FkfuYmZw=;
        b=Ziomgs40k1XnOxkSnRW/Dz2cVPOpfeDnOt/6B7X9SdOFs274TSvL67QlRZfJzdmn0v
         9PsV522vPPHZqYfJexq8TFZgh2plgVYjpc1VySP9erdJAeGN44WtubWwXZUFYa0Ljput
         x66wE/oK8BlavUfxb8NhOyfuWzCDoZ7sRTbK+FWHG0QtSIS+3vAykZBwsSikVGSurRYF
         0bZiLfIojR5nPyaC7bQyDEMv3OZ5oa0BmODyQfG9G6Waqd2SPUFz7qNBXW1z50u/Z00a
         Ss4bv6x7S5VlRDcuTI4Xlp7bHZ5Ny10lPx6utSLqBh3XbPjAIO6kqIvlRFF/cykcY6f7
         7YsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A8gZPcWp;
       spf=pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q4si12864ybk.3.2020.10.26.21.02.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 21:02:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id g16so89155pjv.3
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 21:02:17 -0700 (PDT)
X-Received: by 2002:a17:902:d90d:b029:d5:ee36:3438 with SMTP id
 c13-20020a170902d90db02900d5ee363438mr480534plz.77.1603771336410; Mon, 26 Oct
 2020 21:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <20201026213040.3889546-1-arnd@kernel.org> <20201027035558.16864-1-xie.he.0141@gmail.com>
In-Reply-To: <20201027035558.16864-1-xie.he.0141@gmail.com>
From: Xie He <xie.he.0141@gmail.com>
Date: Mon, 26 Oct 2020 21:02:05 -0700
Message-ID: <CAJht_EPSs6W-r6kpWUNQDPzCjL-+_8mqq2JBoY=qhsQREgn92g@mail.gmail.com>
Subject: Re: [PATCH net-next 01/11] atm: horizon: shut up clang null pointer
 arithmetic warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Chas Williams <3chas3@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"David S. Miller" <davem@davemloft.net>, linux-atm-general@lists.sourceforge.net, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: xie.he.0141@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A8gZPcWp;       spf=pass
 (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 26, 2020 at 8:56 PM Xie He <xie.he.0141@gmail.com> wrote:
>
> > -  for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)
> > +  for (mem = (HDW *) memmap; mem < (HDW *) ((uintptr_t)memmap + 1); ++mem)
>
> Note that these two lines are semantically different. In the first line,
> "+ 1" moves the pointer by (sizeof memmap) bytes. However in the second
> line, "+ 1" moves the pointer by only 1 byte.

Correction: in the first line "+ 1" moves the pointer by (sizeof *memmap) bytes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJht_EPSs6W-r6kpWUNQDPzCjL-%2B_8mqq2JBoY%3DqhsQREgn92g%40mail.gmail.com.
