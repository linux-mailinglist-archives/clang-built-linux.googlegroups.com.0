Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7WBTSEQMGQE55T6ZPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B433F81D8
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:05:04 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id r25-20020a056808211900b00268b48af6basf1051180oiw.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:05:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629954303; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYfjYNAdO+FGosznnGtMYcaQvKhZi07r41JF9NNUE7uy2DVvVQtaXyeXdSNRJAKvcB
         qAP/8PS1jXgmJ2xpbfezgJe+FrDWkMs+WL2RQlTNBKMmqBrhBQds5Td67O6oNyFom75R
         Iv310+4lb6NFYA1xwEw+gXReVGgpO3UO45/nsXH0zXPM1bG9gn0aeirgfpY9QTnCEnGm
         Prpe7JGmIP6lPnBD7Q8v20NnaHuodFmj3Hko3fje6YdAdn30NYAt+xMrYUHu3olB6QR4
         egWqowkMXNnQKRv+638DEfieq2yxsoJikSs7JxZPC0nO0qLPXFyXUT3JwaLPqRxfhhmj
         NPZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DpHFkvQpc3Gj+DjMSEDLjyjhwQqYnkcJWMoUeIzUsLI=;
        b=DsZilIw5sgr3KVOP9HZ21d/ey2ySyS+WJ3WxlktP4djoWhb9sePuF6FR3h/jgDGJhQ
         iI/5VuH/IvU7A8WXQ0Qg6UMg2WvY0ZtlpBtrtWvbXm+YaKoHm6vCPreTB0pZfXhk0Eaa
         RGvTsZulaJoJ1IGJODaknx/8/j6oS5bLpoy54/Mph24aIVjbwELh3IEwjC92HwUBFxeI
         +WWWGrX27wlifSBLOqKIWd9SI1+g1eHGAYrF7tDJ8JOYGWQjpMV1R0aD8onL8zQbcply
         4ewyw7GMSUvcFo/kbKjAQqHjk/dnuhG+AeK+C+0NquLW9LOG6VQu4aMVUhT3ykm9yQYL
         yFuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ItBe2AmT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DpHFkvQpc3Gj+DjMSEDLjyjhwQqYnkcJWMoUeIzUsLI=;
        b=Wbecqp51PJkcbjJFCv5hFnSNe95eLSqZAKoLHNAhRgz7FReanWVg7JznAAOx5+Y3v5
         03xMKsdCv7fB5t1b+4+RHzFBXFccggVcr6j+CmU8VJdDRVjVFPtBd85s0wTq9aubUxsE
         2I+jJBCkQ1jFylMWvsG8K5EK9fGNjJEccXtojkWBoFDYJUDON819YqpuyMwj/C3NxAhD
         nN4aqnqbrqyn9bfd+KxoHHJMmpY1UpK+XlI8ST7HB4rl9Q6llPl9uE6Ic4qya18ak5Yq
         5DOXAaPC+4Cp7k9RArUx2hJvq69zepr9ogdqSDkNBmxzQJgjmYgZaU1JjXqwkxE5Ogf2
         QW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DpHFkvQpc3Gj+DjMSEDLjyjhwQqYnkcJWMoUeIzUsLI=;
        b=NMEV6gQCqCkvFcFHJEBgga+moMJPyuIhLvQR6Vs91kPBoERd2oeFrY3Uh5GDd3B0YI
         aUNiTPflZkas+eSKRD5+mKaDb6vUv9P7TYr8MRRN3dLGvzKvW2QRVgNDyZeThO69GrpQ
         g1WHtbJCY8lzpVPEOmxfcMsslU9TqUciznpfFAHCPIEatR85X2r5U28TnihbXvdySSwl
         dKaD+57cvQH/jQds/phW3uTzBPYCv3/yopmQAsU21jpB2rHXs/7laN5pxBepCv2O7GDi
         n1G92GPHfuUMwGc+O89Bytko85akFTAKXxr15f7H4VWXcogNHca4P1zja6WEVIED+ltB
         JZwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323wfgdAgWQGdEIa9wcfvqlSMrsqyD3K39yd7J35F8kBI+0q81t
	h+1nHGVlHTRT9YuceTleio0=
X-Google-Smtp-Source: ABdhPJywC72LNUwTk+SWr9mgv7hYonBxi/P1obX0Mx6+bO96fHh6NsqUdT8U+KuBdqqJvxhGZ8hAAA==
X-Received: by 2002:a9d:7ac9:: with SMTP id m9mr1580154otn.244.1629954303050;
        Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:11d7:: with SMTP id v23ls810861otq.2.gmail; Wed, 25
 Aug 2021 22:05:02 -0700 (PDT)
X-Received: by 2002:a9d:242:: with SMTP id 60mr1595502otb.324.1629954302655;
        Wed, 25 Aug 2021 22:05:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629954302; cv=none;
        d=google.com; s=arc-20160816;
        b=ezMYPLnfQt03WFBebTmZDDecQgH0ph99TKnko/v9Fpq+qdAhafcRI6CHAoQ2OtEyW2
         Gz+OBw7xWZIo7BDl83a6Y9a5nKYUOi84boJh7goesmbJ04SkKhozjKg351yCC3TXNfej
         TPFqQbQz2ZROw4Uv+PKVG6pODajNYr0YIUc3XQdoFMtCepSJOGWF1gcxfBSRVhljttmp
         HGvAyy8iv0QhvnkAWgAQzHXUPAASW9Jpjpopza34aWkVxd80wmoeUVsdySEbI6VpwmJW
         LjU5PgogI3rx9RRfUdi9mYVQTQlB22uURzhwi5qd31U3EW8aCvmADxQYR5R5VlozQ/hM
         D3Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bjf8zsEWLFO7/Ib/h44uO3Tc/LDuVPPKXDL5B0YH1P0=;
        b=MBS46GuNkt/fp0qEhEEPxVI7AxUnRI7Sho7hUKO+Yi8nWbkETd4wNFKE2qVFV2fwqY
         1qABK+tOZe7/B70D0gqmB80a+DpiFt4hNlYmkv1XQsFdlzpPALbZbL6HJRYAT+WAeyEx
         JNQg24fNybC5JHN5I0Nu5IpTpUsVh9n0cF2GznOH5RnPzHVHWjcDQCC0LfK8gA8g7PIb
         s4jPS6xNRGuEBdeuQNLMo3O5BrXZ95nbIBWxibh/gvMAb6iBDiXcuFdYbHrU/KbBjw3E
         8sFoJD0TIefq0WwKjj1HGb47bbP0OqK1vdl6tbJiwwp7xbuApQU+700xNM+optdJjGIg
         d/Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ItBe2AmT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id b26si123077oti.1.2021.08.25.22.05.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 22:05:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id v123so1698191pfb.11
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 22:05:02 -0700 (PDT)
X-Received: by 2002:a63:4c0e:: with SMTP id z14mr1746894pga.427.1629954301987;
        Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y1sm1778585pga.50.2021.08.25.22.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 22:05:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 1/5] stddef: Add flexible array union helper
Date: Wed, 25 Aug 2021 22:04:54 -0700
Message-Id: <20210826050458.1540622-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210826050458.1540622-1-keescook@chromium.org>
References: <20210826050458.1540622-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4937; h=from:subject; bh=OYtDID8J7StNizowp5Wg1fLuDBrb5WfNy3bIGlN/Sf4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhJyD42tPXbGA6YjavUogqBy5DKEOesnsgInMjhgiJ j6k5fzqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYScg+AAKCRCJcvTf3G3AJuIxD/ 9qTo5HJzehOCezWOZekXVh6mKrVwKgNXzFv5hZI6nedbnrqDmEMIEClEBxjakuCACEvA0US6AOe0De /opDL8nhnKWhEndjyrbPcrFCWeO2F2LoPTftJq0vMU76vP3yhWvbs+BkWKRr+O1jKMIzJQcW6QN8vY sEuELPbfhnMfoPyWDlMRdDqt0zRazB/CeRpKtDDivmaHCuoWWLFD/47DYVRvEqS3aFHpI3yYdu1/lo WUDvWxocyX3m2qyi0vB8dLUlBfmoVKpZms/lBfWbbNe855cXI+QY9hl+mE2oNiRCsQmu2VWVJUORfL VeYitMEmXTmt+F9N5smVQLHUFbA1kSFcWRyY3w5z0EVotZu/9bu8HG7W2WtcZIOc3SRtZCv6DewNu1 KOdWDO6JJeZSKBBr8zcPAGmvDFB2rkq8vHqCCfvx/BJArPwETQXNURT9p+1wKQ07yOp1cOP1TP86PG +zVpTF1nvUTYe3Xwb2Lw+hifIekUyuqCErFLT4LRg3E853rbENNkZHX8R6/TXcRmROw8g28vEsWFwG xIVLqjX9CvYp3imX0nIGCZBPUhudrqgDIllOmlnugQtvWrqYWf+i0IZ8oLh0Knnx8fLokFXflc6Udw eChuEIt5f9zz1Ae8qHrsBcua4cmXIm0nMh64wvZWU8/+dyC6v4HuXA3XekXA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ItBe2AmT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436
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
instead. This is usually in the form:

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

Introduce DECLARE_FLEX_ARRAY() in support of flexible arrays in unions. It
is entirely possible to have a flexible array in a union: it just has to
be in a struct. And since it cannot be alone in a struct, such a struct
must have at least 1 other named member but that member can be zero sized.

As with struct_group(), this is needed in UAPI headers as well, so
implement the core there, with non-UAPI wrapper.

Additionally update kernel-doc to understand its existence.

https://github.com/KSPP/linux/issues/137

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/stddef.h      | 13 +++++++++++++
 include/uapi/linux/stddef.h | 16 ++++++++++++++++
 scripts/kernel-doc          |  2 ++
 3 files changed, 31 insertions(+)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 8b103a53b000..ca507bd5f808 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -84,4 +84,17 @@ enum {
 #define struct_group_tagged(TAG, NAME, MEMBERS...) \
 	__struct_group(TAG, NAME, /* no attrs */, MEMBERS)
 
+/**
+ * DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
+ *
+ * @TYPE: The type of each flexible array element
+ * @NAME: The name of the flexible array member
+ *
+ * In order to have a flexible array member in a union or alone in a
+ * struct, it needs to be wrapped in an anonymous struct with at least 1
+ * named member, but that member can be empty.
+ */
+#define DECLARE_FLEX_ARRAY(TYPE, NAME) \
+	__DECLARE_FLEX_ARRAY(TYPE, NAME)
+
 #endif
diff --git a/include/uapi/linux/stddef.h b/include/uapi/linux/stddef.h
index 610204f7c275..3021ea25a284 100644
--- a/include/uapi/linux/stddef.h
+++ b/include/uapi/linux/stddef.h
@@ -25,3 +25,19 @@
 		struct { MEMBERS } ATTRS; \
 		struct TAG { MEMBERS } ATTRS NAME; \
 	}
+
+/**
+ * __DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
+ *
+ * @TYPE: The type of each flexible array element
+ * @NAME: The name of the flexible array member
+ *
+ * In order to have a flexible array member in a union or alone in a
+ * struct, it needs to be wrapped in an anonymous struct with at least 1
+ * named member, but that member can be empty.
+ */
+#define __DECLARE_FLEX_ARRAY(TYPE, NAME)	\
+	struct { \
+		struct { } __empty_ ## NAME; \
+		TYPE NAME[]; \
+	}
diff --git a/scripts/kernel-doc b/scripts/kernel-doc
index d9715efbe0b7..65088b512d14 100755
--- a/scripts/kernel-doc
+++ b/scripts/kernel-doc
@@ -1263,6 +1263,8 @@ sub dump_struct($$) {
 	$members =~ s/DECLARE_KFIFO\s*\($args,\s*$args,\s*$args\)/$2 \*$1/gos;
 	# replace DECLARE_KFIFO_PTR
 	$members =~ s/DECLARE_KFIFO_PTR\s*\($args,\s*$args\)/$2 \*$1/gos;
+	# replace DECLARE_FLEX_ARRAY
+	$members =~ s/(?:__)?DECLARE_FLEX_ARRAY\s*\($args,\s*$args\)/$1 $2\[\]/gos;
 	my $declaration = $members;
 
 	# Split nested struct/union elements as newer ones
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826050458.1540622-2-keescook%40chromium.org.
