Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLEB6OEAMGQE2P2FXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C983EFED0
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:11:25 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id i9-20020ab029c90000b02902aa59690c5asf432851uaq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:11:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629274285; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgjuYW6RbjNX795enlHA3HKPMBcgZ7dGTAkfXcYNLqmjRzKx3HsQCr/BxYvd0Wjkcx
         x/Ot6KKd/6VgBHX1Mov8J1SMyQK1JkmYF7b/p+jD/ZWclwkIgnZF1w5nICTJvyxEEqEa
         EwYFD5hQlA7853Cw4Xjy/peS/EOPiIk7UeGW+IXpDmL6kS+FIoNvMEPsj7e08wal2nbR
         tKwFpS5ldhbH+TJdSuXGt1f1HeuQdfQA6vBPnkoJi+lvdSUpiM1pDsOwO0rWjpUfd732
         IdjA7IaFGBpLWUNUBK9NmpIFcMCuTTAESwwOvQh4OCo2N0T0MdJwCOZBo2R0npnxBfdA
         eqiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cLtjwvJPN2A0y1X6zLYa7HHj1wdVnOc63WdIo06ciqA=;
        b=nuTYpVVJqXjtxW+rDWr97zf/JOXeY4rvGxcopyA7GG0/Bc1HAcqMmwKk3FV4SaBPVK
         WEB1oiiWlTJXj2Tt15GjbuYJGt+zcQzqXHHgbchR2ee/dOiI1qedSAezPKWZAni/LTqs
         kOWek8Gx/7beqMcQrcPdZL7C2h0gAwAEIKJAx0zbRK9QOxXoFDCgEJLlo7BW47epIgqY
         QfKC1d6Ym2Hpxhfum1GkEqedXUmYUIuRXSLOfLwL1wQ/H5lhHNpEOE4CrhACzD6sRLun
         bO5/R3XVrvOqz3C5z776DUxl9ZC1sDQAmiPRvy42ebaRUI7Xn7I0ED7aXMhs5knGjze2
         P68g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=B4jbY3Aw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cLtjwvJPN2A0y1X6zLYa7HHj1wdVnOc63WdIo06ciqA=;
        b=FVUwZVZo4r0o+O1SsWnbrn/00Ch2cu6Br4gbSk2pa2s/eG9H8c87C9p5UqvOV6oG9W
         zN6c/vPFmVret1szXCFdpoJOuCAs8myl1o2+RgTaQ6oE3PGlps+fwNRBkEzYwgJnx0YE
         GEZn/cq3/DXqGhsWxz9G4zyghuu6Fb/OOkErmapJn6J4sbBIPv4lNzRXyi8v13AX1Eoe
         Xb21z19ubEIYJxDZQJ4viEK6ROg0UQzk0hklZdRsrx004H79XAh+BO6tI3zkyVGRKbzv
         KFjZY7RZd0h8SVPM3V78lUtZOg7JVHwZ5mR5LEWZ0ADgn8stS531kCzcMnTssGquImRR
         8tRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cLtjwvJPN2A0y1X6zLYa7HHj1wdVnOc63WdIo06ciqA=;
        b=joROuuyiwO8KpEjSHziqSe51rCYovnNm2EPL2oWO8q+8iuGjbXOdIDMAOugnCih/bv
         pIHxpOQWIfvdoLBThWNRkqVlPu7sFBsLz1SRukWIbwmTtaime6wmkakMtaMjeH7ZyhRq
         BwvaX3pDoZWC+eQyhS7lJTJ+/7UY8DthlYc6Sh8uucqHKijOSeK8TlXYODGx9r3jfJlR
         gIWK8JdS0MeGL/dcqKONLSsO/CpKN3zaGOAvywq0XoXitwsVHu8mP/ChBsiu7+rX3cko
         Obi1K55qP0n2UcXp7WLvnHfs+dwiIHMfDodncJOxOwQpRhZpJo2F+xV249b1DQOPUnGd
         hfEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MxYx+d3pQDowObMo2tf+2vT+OLBMBVVbxbpKRstLSfcarR+UC
	J+sVZGVZmybOApNuhhmYAsI=
X-Google-Smtp-Source: ABdhPJwbamdmJ1L25dt7V7GCSKRH82b9Nc/mYqSi3DWNQLUBvU47r/rZblYsK4eAgXs5R80pIzbRxg==
X-Received: by 2002:a67:cb12:: with SMTP id b18mr6219284vsl.16.1629274284897;
        Wed, 18 Aug 2021 01:11:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2612:: with SMTP id m18ls81685vkm.10.gmail; Wed, 18 Aug
 2021 01:11:24 -0700 (PDT)
X-Received: by 2002:a1f:308d:: with SMTP id w135mr5612469vkw.15.1629274284376;
        Wed, 18 Aug 2021 01:11:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629274284; cv=none;
        d=google.com; s=arc-20160816;
        b=FU0DOTce48h64HUSME8Hwm7Sz1Njo+T+d/9B5f+RsIFLf1Cu6+AZkTGPD/k19GbdJ4
         jwyRtHZN7pF5KpNBMXXNICxi9BudVeRSg+d4YktZ7ynaV7YJDphkLhmVGqMP+37xY1rz
         bhUhYg+E0Zhyo5mJCVrY+UnVYQMeq7OLeUZWepI52PfCmrMey52KktDKT/GW10qofgEt
         8cMN1IP9SvX0ax5A0XT6TRSZMIrhmij6VBXUj4pJFugD62rPFhnpJ0OfiGdkF/lWBuz5
         80U5jOdzauphpfA25c+qOoN7n4VGmkPLgSsRw7MjuH66/wk+Qnw6/ACizh5hyvsVtMh/
         HEEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DjKNkNmbs11EnubKPixQYCj5845xTew9b5PqY/X9Rb0=;
        b=AupIs4uQ6/lfXs1CILG6LB1eNOdO8+HaLjS1J3fIoinCdmrjukzW6+pcAV2QaEu4zg
         OfA4YB709+obnyYJ6nxyx0UeVhlqFX4Oj33XDWDt0RQ9ag8cBF4GSG1DzXDrNxa1yLlF
         aLGjCQpGueYoGKfR03j2dcJFjT6Qvt64ms6mbHr93bR0llcFkGDDvpQHlWb19TA4uuQC
         RlU+3RB9L9hFgci0gVMf3YuxeW3v5v5tVfOY/bElLFJPVle38ngkcvpYNphsMdUiq/X1
         4hR773z4Yb/Wrf0s6NCtxdFCUcJvEcY/GPa99BXoD8nLI58T+T6vUq3YAJD55lNbGLRg
         ST9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=B4jbY3Aw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id z25si351749uae.0.2021.08.18.01.11.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 01:11:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id w8so1452397pgf.5
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 01:11:24 -0700 (PDT)
X-Received: by 2002:a62:7a0d:0:b029:3ce:18bd:76d7 with SMTP id v13-20020a627a0d0000b02903ce18bd76d7mr8097084pfc.18.1629274283559;
        Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u21sm6125686pgk.57.2021.08.18.01.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 01:11:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH 1/5] stddef: Add flexible array union helper
Date: Wed, 18 Aug 2021 01:11:14 -0700
Message-Id: <20210818081118.1667663-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818081118.1667663-1-keescook@chromium.org>
References: <20210818081118.1667663-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4032; h=from:subject; bh=wNcfypC6/+KHDbIj8cU4psVET+vLK2EdMOO+mtjv1ZE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHMCk11+uQJTuNDaPLU8sBgA1/s3vLk+mMKbETDi4 LijsR+SJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRzApAAKCRCJcvTf3G3AJoQ9D/ 9FHP7a71jZFs28VBcZ0A0ecihVEG+t2c8snmQ8JKHmPLsyLI3bBjT3qnzkSuBKIBbSIQ6W9p2LGCjD WFLvPmq5QVpfZ0+AvuiW4lIC/PJHv+ks2e5zwolcBspTDBMregbJJnYsAAGHTdL91p90v8eQm6daak tri6Xs6LSejimghQb6JId6n559TY3UEdk4FlMYVyIT5sxE0OpiXvWdfbIa3d1zHNQjXaK5iJKB1OZd 5Tg1NxbZAXKMhq1XyzVrUj9YS0msshMNRbogaR2dzucNkhpFbmMcnpI+WqhcvVmDA33FcDDMTat7Cr 4DismPx2Oy0hWtyOPOMY9JVFZjGrRtq3BlnmVa+MUQY/YN5iPjSWKbO4X0BazOPmfIJJAnUdaiqoxG 1QjBUWgwshF8p2vyxPtFedp2ukOlxxq9Zoez8YbbS2nuRQWMpezkXUCVayiST8NCvhaI5pkUq6CEQU 9GTNr5FsUMuloaBtrt0UnWZ06yT2Z4Y5qQUId0fkJMJpB2oGjDdDc7zRUQhbL5kGho/oJy6Z+Bu7c+ zsFpCv0j37Wh6Xm7MRwNsx8wByH9s4uvlSz+Af+RWjAGal7BEVbJa6XXGXDl3y4p/hVY3JyCqd6I/i dhVpX4ArWlHu1EiSX3QEECAseqznz7M4Kf9FsC+Cn57XM/dNTF413uKAj8lw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=B4jbY3Aw;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Many places in the kernel want to use a flexible array in a union. This
is especially common when wanting several different typed trailing
flexible arrays. Since GCC and Clang don't (on the surface) allow this,
such structs have traditionally used combinations of zero-element arrays
instead. This is usually seen in this form, implying a union of "foo"
and "bar":

struct thing {
	...
	struct type1 foo[0];
	struct type2 bar[];
};

This causes problems with size checks against such zero-element arrays
(for example with -Warray-bounds and -Wzero-length-bounds), so they must
all be converted to "real" flexible arrays, avoiding warnings like this:

fs/hpfs/anode.c: In function 'hpfs_add_sector_to_btree':
fs/hpfs/anode.c:209:27: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct bplus_internal_node[0]' [-Wzero-length-bounds]
  209 |    anode->btree.u.internal[0].down = cpu_to_le32(a);
      |    ~~~~~~~~~~~~~~~~~~~~~~~^~~
In file included from fs/hpfs/hpfs_fn.h:26,
                 from fs/hpfs/anode.c:10:
fs/hpfs/hpfs.h:412:32: note: while referencing 'internal'
  412 |     struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
      |                                ^~~~~~~~

drivers/net/can/usb/etas_es58x/es58x_fd.c: In function 'es58x_fd_tx_can_msg':
drivers/net/can/usb/etas_es58x/es58x_fd.c:360:35: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'u8[0]' {aka 'unsigned char[]'} [-Wzero-length-bounds]
  360 |  tx_can_msg = (typeof(tx_can_msg))&es58x_fd_urb_cmd->raw_msg[msg_len];
      |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/net/can/usb/etas_es58x/es58x_core.h:22,
                 from drivers/net/can/usb/etas_es58x/es58x_fd.c:17:
drivers/net/can/usb/etas_es58x/es58x_fd.h:231:6: note: while referencing 'raw_msg'
  231 |   u8 raw_msg[0];
      |      ^~~~~~~

Introduce flex_array() in support of flexible arrays in unions. It is
entirely possible to have a flexible array in a union: it just has to
be in a struct. And since it cannot be alone in a struct, such a struct
must have at least 1 other named member (here provided by __UNIQUE_ID),
but that member can be zero sized.

As with struct_group(), this is needed in UAPI headers as well, so a
minimal implementation (without the __UNIQUE_ID magic) is available for
UAPI.

https://github.com/KSPP/linux/issues/137

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/stddef.h      | 10 ++++++++++
 include/uapi/linux/stddef.h | 13 +++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index f2aefdb22d1d..c7c5d25ac184 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -83,4 +83,14 @@ enum {
 #define struct_group_tagged(TAG, NAME, MEMBERS...) \
 	__struct_group(TAG, NAME, /* no attrs */, MEMBERS)
 
+/**
+ * flex_array(DECL)
+ *
+ * In order to have a flexible array member in a union, it needs to be
+ * wrapped in an anonymous struct with at least 1 named member, but that
+ * member can be empty.
+ */
+#define flex_array(DECL)	\
+	__flex_array(__UNIQUE_ID(__flex_array), DECL)
+
 #endif
diff --git a/include/uapi/linux/stddef.h b/include/uapi/linux/stddef.h
index 0fbdf2f711aa..6320bbc90721 100644
--- a/include/uapi/linux/stddef.h
+++ b/include/uapi/linux/stddef.h
@@ -25,3 +25,16 @@
 		struct { MEMBERS } ATTRS; \
 		struct TAG { MEMBERS } ATTRS NAME; \
 	}
+
+/**
+ * __flex_array(UNIQUE_MEMBER_NAME, DECL)
+ *
+ * In order to have a flexible array member in a union, it needs to be
+ * wrapped in an anonymous struct with at least 1 named member, but that
+ * member can be empty.
+ */
+#define __flex_array(UNIQUE_MEMBER_NAME, DECL)	\
+	struct { \
+		struct { } UNIQUE_MEMBER_NAME; \
+		DECL; \
+	}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818081118.1667663-2-keescook%40chromium.org.
