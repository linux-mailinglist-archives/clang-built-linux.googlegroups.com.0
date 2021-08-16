Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRUR5OEAMGQE6NDPESY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C22C3EDE88
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:21:27 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id d20-20020a05620a1414b02903d24f3e6540sf532309qkj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:21:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629145286; cv=pass;
        d=google.com; s=arc-20160816;
        b=ysYY3KUugcW6nAIrHDPykp7nJQTGcukeZHd9opYKTT3FIcuYD6nzdSZHTcGOzWuUX8
         4aAAUs2hXWB33L7VxeKirnJ6PZPdc3Qpg2VdR/Gao6YrrRXPKrPzyy0sD3cY04SYXON+
         eQC9oiRRC03kPIMaGSF7kgNhzRyC8W7MX+5mPhgc/urMuxqAyE3KBvgMAjvvvozV4NZy
         uhjn5cnKjhPWBHNNlxeQ+OJUU0vgn2v8WiwaQZ+gVTk9QXyK0XEYt5pB21Xs6RwFRr68
         gYIAv8iy8Gcy9R3oDUbAUeoeiG+wQr7QA/z1fFBMA9xP2CvIYcVvEbqwGaBZo75u7UCW
         pvDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mCbmzSaKiMIJ7f/U8szx/VPBLbzDMDuK4gh4nuayFak=;
        b=EhhqP4+hfRKKFhkS0MKVYHgcjjAK+i8wFxxPDWii7DIEe53+Ppd/uWBwuTi1tE2h7z
         fReNgNYZJiJ8GCk0ZG1YaSp2mjsb820+sGKqDC+T6sWppVWmZhwKZtr6dobCAfk3gZYR
         haQibQL8XuRIMY7b7KAjp3lSNpWhEhy14SrqnAyTBGD0qIZuO+oATo5VdSBhuADby2Kh
         bbYiX2+5JxeRFoYA7N0JBEG9GKfuXQQlsNSofivOE7XA3vwRvsnoIqpqNPYXLJ6rrvZT
         wLxesz8ws6lY7stukKfmVWedYSi6c62p3Xy0ItWJzwu1rTa+C/3TXGjKjDsIjM6obC5v
         QdoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KmgZBT6a;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mCbmzSaKiMIJ7f/U8szx/VPBLbzDMDuK4gh4nuayFak=;
        b=fQjh+3LBcITpfAKC3KFh1D5dPnEHTdIsrIoc/L2pfju2b4uUk8+gqYD+jpswpyxOnh
         4FIX8HB8I8sNQaZ+yIVImkJx019oNhfqRoS9637nU+wlkcsA9hW47w0PKI2mzO85uw8b
         hS2AdlBC+FIt55EWgJS6VKhjQSqK6rcuuSAAcx4pcp7Yi2DraJDpovy9p/ZUYEanGG0v
         icTnCtq8GwlKcGwmk+tBejNJebMmIkwL6BViVdPXTYwaTie20h9+EzHX51jBQ4XVcOac
         wwKFbp3BLqbPPCCXaJ8AWc8+T4hYecjmDHfhWgCLfamBAoXmOuHVki/tQumtUSV8C/fC
         Juww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mCbmzSaKiMIJ7f/U8szx/VPBLbzDMDuK4gh4nuayFak=;
        b=ujy6kHqZ3CWW0aekRnrViNPjcAyRCxeWzQ/EuZuqQdmlTlX40g8VctacLAE0o64Q3v
         YA788RwQpIXAILFNngYX2BCLYIIZJLRqBtT9hgD4luzWV2DIhVpeK8bFOg2qER7heCWu
         i0ZeOCE0A5LlfmQU+KvpNVsekmG10iTfj/E0iY+R7IzjsUyX5nD485XyDShZtbguBT/o
         KMDWKN0kdaKy4HWMr6otMbeHKknXt8YvA5g76nZEe0bfVzqO1qOLAM6cnuWglIRPpbNv
         Ewde5ROcWrG+FdgHLnE1imsHI4qj9D50dwxF3oTOK1QxAin7cxbdR3wAvpxdSbUoC4VO
         HndA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nRppdq7s5frdJrzl4myS45E1ZDB/I894IDrBsG1jRVNsN3aTY
	wuGWQOvM6iYV85Ae+idm5bo=
X-Google-Smtp-Source: ABdhPJzpjU2Dh9QHsMM44J1b6vcn/xvO3tHn/nh58Nl3c31tWzvYdZIBljdmXAjC92YSPByINenDOA==
X-Received: by 2002:ac8:1487:: with SMTP id l7mr642192qtj.345.1629145286261;
        Mon, 16 Aug 2021 13:21:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6191:: with SMTP id v139ls8986qkb.2.gmail; Mon, 16 Aug
 2021 13:21:25 -0700 (PDT)
X-Received: by 2002:a37:541:: with SMTP id 62mr122923qkf.478.1629145285808;
        Mon, 16 Aug 2021 13:21:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629145285; cv=none;
        d=google.com; s=arc-20160816;
        b=Rp827phXTqPWAnhz7eZMN5HIGfGRqlZp/z0ptvVI00UbaPqy8abChv/HWr0WvtRXhW
         QY8D5SLwvJxxyBFc+WWKP9c/zgyqfdGr5ggZfuvTA+ApjFoG6h7ZTSGKGJIHT/MNpDBw
         fMBjQ9mxg+AfIK8fqlqZKeOOeMFAgajI0pXfMNrKTXoCyhK5pOB/vJSXA78zQ6/S63yY
         K7mw/hZY6RV5v74Fo5zauCMuJwAdD4hfkgw2Cgi1FFNkAffCtwxMmHItLrIeIiLpkMe4
         H8dhzNLiUgwRmMSoeCSktc6ThZDJGtQrS6pdQJlCwrRstHPtwtOKiO94yez/7LG2G5dy
         6sbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=R4AlFQzDnlnc9lBVaSN+LIzYbPd6WtedlNYP5+sDEgY=;
        b=BR1B0o7k+iEZ6bIqNf8hIIFCjFOMp93L+6PoA4MPDiO281kp2tTvVtOWJvGQs5sEu2
         lVkdXXHkJp35lZMb1repCNcIBscWkxPPtaI55DiatAFr6jjAgN3oKW6RGeoArw6STFrr
         gL6JbgTsEIfTlhdtF0tQK5rtUUKVzgV3q3RRtJxuxFYSoTpJMmKT4z/KdAcQFUVj6SCb
         vK0nByxoOFc+c5sC8Jkeb6/3TinFWYbdnvAqsg6KsA46TW+JbhxoOvEFLDIdjW7et8LU
         QkseZ8BRdWvxgTWIPZOCc7atD/u0IelgaDhX3TKfmmQTOboZ6W9Av9mu62BVXs1tQsru
         CodA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KmgZBT6a;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n2si26783qkp.4.2021.08.16.13.21.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:21:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 91D4C60EE4;
	Mon, 16 Aug 2021 20:21:23 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/3] kbuild: Add a comment above -Wno-gnu
Date: Mon, 16 Aug 2021 13:20:55 -0700
Message-Id: <20210816202056.4586-2-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
In-Reply-To: <20210816202056.4586-1-nathan@kernel.org>
References: <20210816202056.4586-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KmgZBT6a;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Whenever a warning is disabled, it is helpful for future travelers to
understand why the warning is disabled and why it is acceptable to do
so. Add a comment for -Wno-gnu so that people understand why it is
disabled.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index 3900f5824721..07b76274396e 100644
--- a/Makefile
+++ b/Makefile
@@ -777,6 +777,7 @@ KBUILD_CFLAGS += $(stackp-flags-y)
 
 ifdef CONFIG_CC_IS_CLANG
 KBUILD_CPPFLAGS += -Qunused-arguments
+# The kernel builds with '-std=gnu89' so use of GNU extensions is acceptable.
 KBUILD_CFLAGS += -Wno-gnu
 # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816202056.4586-2-nathan%40kernel.org.
