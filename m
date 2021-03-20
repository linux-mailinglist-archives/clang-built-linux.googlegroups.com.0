Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBCFK26BAMGQEPLQO22A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 849C9342B9C
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 11:57:14 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id a8sf18995411plp.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 03:57:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616237833; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2Ps6kj1VwrHEAhoHHgDK5lAFAZR9yoZFtZJUC0OL0xkaP1M/y01Qo8qqdWPUBsT2B
         mg+FmG12zAAuVHEc9Vw2SOJWluGO4E6btkWW1LwGNbyPXArKv1HimtqaobqmhByWlbLg
         dpviwlRzWIlaUY/FF/X/GRcFFAzFBU9TV7N07abM2PqhWaifpMNPyqzn4znVjz/MdCdx
         +QSM6RgC/uBcFF2rM8jgfQvxsWcW8SwekXNUtzfeMO+Kg3PrUNLR3RhnA+Vwr2eIQxlt
         LY6rrzn/GSwWC3Glsh6wmtv15A0LFV++DA72p0oCQD7Hiexbw6QYiAaDjgHaO0aomqeL
         x2QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ruBikgd9xORlfVvkeM4szZgJCeqAARCZQTEwHw1PkBY=;
        b=QUKp5UhUrVHiIQN8+0MfFAsGxdH94cRtObENSTPG/KUiKWKT/Hj9kauVJY2J63TWSz
         dfYsr+waMiGk64dx78arRjfz95APqr/1PDtBmivSjTLSfwFHmcXpQTnXMaQFk9hOkntT
         e2K45zA+7KCqekJeKiGRsjplAzSbSPVpNO5AMS9QFA2BKcJmiANRQ0/yZOwv7jSj/r/+
         ByvtYd7eLz4HdpmZ9PQYlIBjB8ZmhieA9nlIKPPDuR0XfpXceqs3AHVH/eWAwEHPnFur
         /OlaNQmkfJQJHzJhsqlU4gfxMw62ESlIs946LVjDP/FHbUw0CS25RvvKF/0WIseJTrlO
         FViA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="T/rSoy6G";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ruBikgd9xORlfVvkeM4szZgJCeqAARCZQTEwHw1PkBY=;
        b=Ik61p1h7/GhgQOrZFrmql3a9hnLP+rNW3Sjp3dCo55Dog+3UU9mzKVHOITlI8M7AV+
         yDvLb8Zjnu9S8EN0D7LS+iLicw024cmOJd4WTe03dEeC0D0UPk8KWNmSMISTx497jt1V
         a6T330ILnyLeyOYYkSNzjf/imD/H1pOvtUhMZJIFlWNRsOfzwQCzQswJOsOBVB1Jj54O
         oIjAgYNt8V6Z9wHrSVuZDibI3t9OCCi0uQeY1+6VVEnV+U7dzloXtz70LC8krQaBNz2z
         Fd+KPzAMv724SYS49uCb1o/IR6/ZCqlQeToVihaerkMX3lGvh4d25hb8sWNxwgoJf7nc
         0u1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ruBikgd9xORlfVvkeM4szZgJCeqAARCZQTEwHw1PkBY=;
        b=Z38395RLDvQ7jqKWw8YYhcSOu5TEZuWodwoKjRsH0ebiPjL1XajZs9Mtat2fUtOLvp
         anxHzWeSvzu2mk2rRNcPIg5nMInwf7/Bwi9uDg10NJgfE/NsWrYuxZ/wyjK1HwZ+UB9Z
         0+zmNBLCsjVs0Bg5EA6V1bAIeSMF/h04rNV6/jilWdD7H7W2RwkYniLLM1d9VG+5Kmbp
         vqcaUCqM0HTtBgiF7U3IMpzmxBp53I6QEsIuorj/VbMkoooEayr+ycNS/0WSXrdlQmQy
         VzfMtGpAJFCLnf4k0S6iHOSrjSskE+3cp/+jemNSXdcpsGcPtmuSENIsB29mioV4uAVF
         r3+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53097y4hvfmWXedpf1kb5OQ/JG3mJkai3W93EirG8uE2T7QRHR5r
	nC7Z0iZVwvrqz1d0Dyf1nsE=
X-Google-Smtp-Source: ABdhPJykhnhXLa+1PXoPZfAFODsCZZd8EsCRovn/mWb6Ia+uzKSMxIXdZaNve9lSfie54U4ufI3q7Q==
X-Received: by 2002:a17:902:ac94:b029:e6:de3d:3cb7 with SMTP id h20-20020a170902ac94b02900e6de3d3cb7mr2098558plr.23.1616237833040;
        Sat, 20 Mar 2021 03:57:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9acd:: with SMTP id x13ls289838pfp.1.gmail; Sat, 20 Mar
 2021 03:57:12 -0700 (PDT)
X-Received: by 2002:aa7:818e:0:b029:215:2466:3994 with SMTP id g14-20020aa7818e0000b029021524663994mr2404698pfi.48.1616237832569;
        Sat, 20 Mar 2021 03:57:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616237832; cv=none;
        d=google.com; s=arc-20160816;
        b=lBuPgeiWBrBk1UMohKNG3v+pyIfSBWWwaYqBHNBa2j+CR3ixQa8g9ADLDiZPx3t59m
         KCx2hmGpwV+NIyDZ8mTosk5sFnmChU+eY5zhofjlLmz+tFHofOYddZuJwn5kIj2DJ6Ob
         +uxU0eq2jeViSBZPt2lLr/iySsj1DJc6qCBG2dnqC8yFiK3c6mDufOhj5Yz9Ut+R/icH
         tCIz/KLZOe7T/u7QnlIRQ87u8++G/aejuaB+g9GEyI/Iw5qMkLRs6zcui/wQTpuXlTiu
         ERTww7o9kliPwuC7UtQcXO3qFexqDoLlK5v1TD8SnquCnETWsQHGak8gFJw/xPbUobQw
         qA2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=86tQUGFDMt04Y+JvR11S/QUpRJ6dR82Sd53CpRq7CRI=;
        b=f2YkTWdtpjEudzcQLD3ashQrEkXlOFBIIJiV9/AWg7rc0+9PBBX89XOsIHSZTpKfMP
         IFMP7u8rrgltUKnqaS0Cv0CaIVryfw5nfU7dalDHy2uQpFDVSD4jX6Iz1f3F0GUXdohC
         fyGARuYrGJZyCSMx8knW/NYwcL9R8nP/HNXlLJco35sj2oous/qQMqSuXGk4rsOHZHAM
         iWCZsTcG5pzjY17A9g0q0zYA9rvNC+yatMIsZDn88ThiUGw4qWGpU6RzuOGLrxkfzY63
         D8SVtwS2FbWE/0K1ehfGfRuhzf0F49mVKZCNag537AmW+K3lniY7a9wcqIRCYbKANS3O
         hJHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="T/rSoy6G";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ft8si712795pjb.0.2021.03.20.03.57.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 03:57:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D23D61A40;
	Sat, 20 Mar 2021 10:57:11 +0000 (UTC)
Date: Sat, 20 Mar 2021 11:57:09 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Cc: stable@vger.kernel.org, groeck@chromium.org,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Christopher Li <sparse@chrisli.org>, Daniel Axtens <dja@axtens.net>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Marek <michal.lkml@markovi.net>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	Nicholas Piggin <npiggin@gmail.com>,
	Paul Mackerras <paulus@samba.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-sparse@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: Re: [for-stable-4.19 PATCH v2 0/2] Backport patches to fix
 KASAN+LKDTM with recent clang on ARM64
Message-ID: <YFXVBXuXRkug2Esi@kroah.com>
References: <20210320041626.885806-1-drinkcat@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210320041626.885806-1-drinkcat@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="T/rSoy6G";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Mar 20, 2021 at 12:16:24PM +0800, Nicolas Boichat wrote:
> Backport 2 patches that are required to make KASAN+LKDTM work
> with recent clang (patch 2/2 has a complete description).
> Tested on our chromeos-4.19 branch.
> Also compile tested on x86-64 and arm64 with gcc this time
> around.
> 
> Patch 1/2 adds a guard around noinstr that matches upstream,
> to prevent a build issue, and has some minor context conflicts.
> Patch 2/2 is a clean backport.
> 
> These patches have been merged to 5.4 stable already. We might
> need to backport to older stable branches, but this is what I
> could test for now.

Ok, trying this again, let's see what breaks :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFXVBXuXRkug2Esi%40kroah.com.
