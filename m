Return-Path: <clang-built-linux+bncBAABB5N64D6AKGQEVXO4LNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7063029AD30
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 14:24:06 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id w4sf1392737ybq.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 06:24:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603805045; cv=pass;
        d=google.com; s=arc-20160816;
        b=wsTGHKTKgoYo3nO7k3Qa8uQKvUK6AG4MlhJcNHxDYUwvLkI9RgbJfjNEuzL4w1p2qN
         ihveMuG+ocqGmQo/1DAAIIWtojqVQgWMPmhiihTQY58wKOIKcSQf17YGOG5UP2Y46RfA
         iX7sUjxnL9v8oIkYQz+uco1KDw/1ejtEhLnwJGXvL9P4+VCR31CDH6v6qlg02HoKGgKm
         CFPf3pMgomMbkoEpdEwBUmfQwQU0Qb27SL5UG+NVF0VLLuV3qvgd1NFEv/Sz0ZHyFZqv
         mbySHObAK0P1+J3JXyx/3LqSMqAZI+q2ntRMq5CsF0P/v3dqtrTxveKDlaStpPPDqEu5
         8T9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=c5RkGKsu91ciTOb8qTju9hF5VkMLK3gox2OiOYyXl1I=;
        b=YezE84fWuo8qLyM00VMVZLk/dGLU5GR5ldtdNyThV48ykGCaQe9PKeYRhthmqhy8d1
         WzRLcyZKMgtA3RJ0UbaUZXdLHP2HWTdh1XEAGeOwxYYd2eYijl8HUfiSu2E/Ia9JGxzI
         SZ6T/5puOwU/6rOAPDbSl/Ax6uWSI51t7Vkn0LQTmBRB4GsqxXs7Sg9f3EnOgXg0wDkd
         PH7nQ2v22Wz2ZIWbpfx340Jqk1BJ8sNZtupLVNI8QiORV1N5fHHIx7XVthendNJ2xpqt
         u4a5neMMCVHmqaPNCNzBelfVvI0wjlJNnP/WEuQsq7vR/1Dj1ULCeAjZ0YLH/CIi4nhk
         +1Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HwuK+hsJ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c5RkGKsu91ciTOb8qTju9hF5VkMLK3gox2OiOYyXl1I=;
        b=gg51w8Yre1Nsr/SH7/VHPNMAXSrnDdsfCHu8jSXB2OAuolo1Vavq8pBUk9kdWDcrZE
         Oy3GlXlblFdhbhOkLIpUNGraKMO4bdEgVnqhvbJbpLH4hVI5jVu61rQrWaG59+/UJhBe
         KPaOblclQRf2Z+VG0vP6yvroaqfuKX9te8fevq8o7FaVigTVGcu226fvUBhjK3ZGSWrX
         i9lwn9ar/KCQ+00CxpewYpmOLITaiJzyT52affYpscB3gMzHwBo3UF4qHu2XGfzxRiUs
         pv4QWl/7ID06IwEM7gKMYKWxosUwXXDEUx9YCQFvxyB0RCxpjEuRBVm4jAw5V4gXjZ97
         mWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c5RkGKsu91ciTOb8qTju9hF5VkMLK3gox2OiOYyXl1I=;
        b=d8yywFKLqZWkCEM3jAiN678gI+evHje3Bin22o9sfVRKrtezZVXdNibk7KGHuEsOch
         M0q2TG/WU6QduMwd+tN/Bu2xxCLJoPoNebqjDgraRzw165QzrDLgMPyuixGFqSZE2geH
         9fsvH3TeIObrGdZlgDatXiF+6XwNGntakg9B+HkBHND1qZlwPSKWGhBtiiQuDiScfbx8
         BN3psxzNBnhiKssfwIHygOlTJaHAQ3M4fMKztOgH5hskMZb/+M5h/sXIiVACTAghDNF9
         1GEhTOiEjeR/Ki7RnflNyotTwvPt6+allSflTrqPpbF61ciK04lSgN+CqcEXT8e+6tFH
         KquA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mME82JPLltjS3Bp4jYW9yqhusuDBA9MGMUnFUrJGsP0vzLxEc
	DVRtp1lU6GuIm0TM9MNbBEY=
X-Google-Smtp-Source: ABdhPJywk4yTlOU4DCKRfjMD/S4GD6A3xNaLhf3QGq+dc4/ISBLfjdAD/xV9EPgW6iYhbZ8QqtNP9A==
X-Received: by 2002:a25:a221:: with SMTP id b30mr3141390ybi.523.1603805045468;
        Tue, 27 Oct 2020 06:24:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2689:: with SMTP id m131ls778991ybm.7.gmail; Tue, 27 Oct
 2020 06:24:05 -0700 (PDT)
X-Received: by 2002:a25:ab84:: with SMTP id v4mr3248404ybi.313.1603805044995;
        Tue, 27 Oct 2020 06:24:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603805044; cv=none;
        d=google.com; s=arc-20160816;
        b=IyYM9rhyLFjyBf2/BlWVmWwzIfuJOL0y9oJP0/eGmnNRBy1nK+rr9aEofoqtImJZB1
         8rIEdqMHJACCa7NQy/GeBmFMdf+Ytqj/ci9KIZynI4WlqW8FO89H7NQzk2fewC8WwvkY
         1n1Uu6nUj4NG06WSgf9y5/65ddVJ+KIgdeH5EbtzdJtRqdFoHPIgBDFOY4J6bv4JpIOH
         zVPvF7RsAH54Kq78lpA4W4rx31ny4SRoylz5+RtZjhTDJzW5olH+BgjSO7z4g4oXx+/j
         QDdlOFnzOPpOmM78zpp2816WlZXeVCU42i1UdtflFRniauEYwVNrL5nyLyq4UCa7T/zW
         fP8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4EFLj/J1EJj39vih/eBzcfDmNN3V792Qx1rI7lakAJ0=;
        b=GKWyEKCQKIx2l0txN5vsVnNzcu0MROGnNZM801xGMxAHDBpYlSwzAK3sOfngJEvshH
         Nsualfv7aJwLVlhAfxbZSGPS4YC7EMMxbiWy+CtsUhSgvJeLCfct/g9QBtQWN+hZNdqb
         bmX75199Tnun84UJrwuWvl2vvX9DS7STtqO1y4L87dMN4zSFAhQhfFh1FgSQAKigHU/v
         1PmUvmnCDOpWhL3QMHlSI0wBTTJORQqeNvoV1ctET5lFBK4sEL05taMym9bpGe58RCRI
         11TnHlC6GzrVSoGoBNRNotxIwMbFPeWKBi95ZLbcmXwCRPzdCG+J5NiL/imJ1iFg4IJX
         LvDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HwuK+hsJ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h89si94349ybi.5.2020.10.27.06.24.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:24:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EB0121527
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:24:03 +0000 (UTC)
Received: by mail-qv1-f50.google.com with SMTP id s1so598614qvm.13
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 06:24:03 -0700 (PDT)
X-Received: by 2002:a0c:c187:: with SMTP id n7mr2303412qvh.19.1603805042676;
 Tue, 27 Oct 2020 06:24:02 -0700 (PDT)
MIME-Version: 1.0
References: <20201026213040.3889546-1-arnd@kernel.org> <20201027035558.16864-1-xie.he.0141@gmail.com>
 <CAJht_EPSs6W-r6kpWUNQDPzCjL-+_8mqq2JBoY=qhsQREgn92g@mail.gmail.com>
In-Reply-To: <CAJht_EPSs6W-r6kpWUNQDPzCjL-+_8mqq2JBoY=qhsQREgn92g@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 27 Oct 2020 14:23:46 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3JTg5Mi2XC9AEC+YwH552M_TXDY4BaULZz5WmEb3woRQ@mail.gmail.com>
Message-ID: <CAK8P3a3JTg5Mi2XC9AEC+YwH552M_TXDY4BaULZz5WmEb3woRQ@mail.gmail.com>
Subject: Re: [PATCH net-next 01/11] atm: horizon: shut up clang null pointer
 arithmetic warning
To: Xie He <xie.he.0141@gmail.com>
Cc: Chas Williams <3chas3@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, "David S. Miller" <davem@davemloft.net>, 
	linux-atm-general@lists.sourceforge.net, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HwuK+hsJ;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Oct 27, 2020 at 5:02 AM Xie He <xie.he.0141@gmail.com> wrote:
>
> On Mon, Oct 26, 2020 at 8:56 PM Xie He <xie.he.0141@gmail.com> wrote:
> >
> > > -  for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)
> > > +  for (mem = (HDW *) memmap; mem < (HDW *) ((uintptr_t)memmap + 1); ++mem)
> >
> > Note that these two lines are semantically different. In the first line,
> > "+ 1" moves the pointer by (sizeof memmap) bytes. However in the second
> > line, "+ 1" moves the pointer by only 1 byte.
>
> Correction: in the first line "+ 1" moves the pointer by (sizeof *memmap) bytes.

Ah, of course. I had looked up the types but mixed up the memmap
and HDW definitions, but then got confused trying to understand the
logic in wr_mem() that operates on bytes but expands them into
multiples of 4.

I've modified it as below now, will resend along with the other patches
if you think this makes sense.

        Arnd

--- a/drivers/atm/horizon.c
+++ b/drivers/atm/horizon.c
@@ -1815,7 +1815,7 @@ static int hrz_init(hrz_dev *dev)

   int buff_count;

-  HDW * mem;
+  uintptr_t offset;

   cell_buf * tx_desc;
   cell_buf * rx_desc;
@@ -1841,8 +1841,8 @@ static int hrz_init(hrz_dev *dev)

   printk (" clearing memory");

-  for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)
-    wr_mem (dev, mem, 0);
+  for (offset = 0; offset < sizeof(struct MEMMAP); offset++)
+    wr_mem (dev, (HDW *)offset, 0);

   printk (" tx channels");

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3JTg5Mi2XC9AEC%2BYwH552M_TXDY4BaULZz5WmEb3woRQ%40mail.gmail.com.
