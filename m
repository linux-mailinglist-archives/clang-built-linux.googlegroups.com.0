Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTMFW33QKGQE73UNJHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 620BF202050
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:22 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id e82sf12286723ybh.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623821; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2zRjcxigyQIrrmaWkuguWFtezZsLL8Q9ZSaW2vztru5e5XjN66Gfg0z1yfcyda0Vh
         ZBO3o97oRweR0pb+19ovTRqvDWbrdDwGUdIeFKCGkChCFAfYGwqqMlWjJpRcXlnG8cmo
         F4H5/7m8iMfHxJcuiZRV0QsJd+Ol49/Vc1/km2vndwMROT007X2DLs9SqG8jFf449Toz
         2fzxGasWcA7Uoa5D9nWzK18MxnQ8MASi6kytqYGrwM2jilFaeNfp86LvG4wvMSPF0mhU
         OsDYSxXUglgqK2a8ZYCvTyILa+POX6MPu4jG5fsp8yC1D/xavmbI7ABCFr3WOpZe0kNj
         wZcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MX4gY5vwOJlhMINIxdoUIrcntVdE3CaUIf9WQjMjyik=;
        b=HEghFmRhtqW/8Nb1EPGm5cIOenYuX7SDdBoBOm1XXyPAIxrlrlgmZ7ccpv8gTR4h2q
         uv/eHQVcbiSQ3udVSITWDiGHY7+19KOuoDu+/1iEA/qK3/ljHfvqnuipNAKQOdCQIX6r
         TyRtOuIv5P2WhUnV3ZsBNDM1hM4zp9JskpEre/zRJWc2wz9yLlUpndN02iv7gmjA7zMY
         BvwDggcC+W1V175xkzWBeO67RQV7YCzIgyq2nZqomj+IWQszRkUt1ySlY+TnN4oqEaqk
         Q8Qqc8teJMfn6/fdcZ2Oquc4k19Vv8wAUI8UEu8GY60OYc8O3UsQofGU8kN5lMTlApdm
         NwKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j8nQ3B7F;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MX4gY5vwOJlhMINIxdoUIrcntVdE3CaUIf9WQjMjyik=;
        b=LAw8EoRid9SpXH6efNYpZ6qvnkXUnd4UKzG/tro7/G1KMYrFyVjDL7Q/S2TciBR/mF
         r8IkBCSVqXQgcstbDoTOGyYHE1NlEIiynpboqQy/2BEazZ/sttaE7j0prMKhpLokNW8a
         Ru989zvT913O1QQa4HaLwpJT70NT+KhRtU8kmOGNJGjngH0Zxsam0FLbpQKL8apiYVVR
         X9jMhHdVOZcC2luWRjUOIvBTb5iEZZCPehDOTLQljORyWNL8S21GCbq7FIJVRYZPeG6W
         C0cE5hj7tBo52s0xWtQd8uDTa5H1fLi4hJj7XJ5kr2MDoRwbQaomwGmdC4Tc3zsb+7Sh
         +mfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MX4gY5vwOJlhMINIxdoUIrcntVdE3CaUIf9WQjMjyik=;
        b=XFcNjhur7eU4YWI7/Qp5+TTNl6fcm6Zz45lcpziWmwCLkJOLQlosRdiIt9tROJHGeD
         +Brgv4hGxQ4dGkJTIHfYzwKvkRWTw+Ve9mNkQZscdQYYkjUbvUA8/uP+YeGaVpaxZxBw
         FU40mjrCeSnDFpnk9mGGNFP3TxjmX57901V44winKgyfsZREL0xxVey2xNye/KEMuVGu
         OX8tiSjbpYOxejtlTKMKe93whNHhv/ZUKtoMNz+oiE0emYixrVDzSLKQ+dSzQnyNl7ov
         6P8WqW8KlRzsDaIK2Wd+SlHEhtaVGL0mq5UVlHBwKPcC5d6AvRxVkfrJtq8dVOV6eDAr
         Czug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+HYgAwK608uktjgApiFBSrUFszBMEQzX0uKbl50POzD6/8Xee
	9nn6egqk7I+SQzkBX8dwXxc=
X-Google-Smtp-Source: ABdhPJxDjWCr1cZPAU0ChKwPlByKzro0Ms3vHGtTWi+i4LQXQ07n3IwH+ieDy2WfLQKw6PppwWLg0Q==
X-Received: by 2002:a5b:cc9:: with SMTP id e9mr10342382ybr.287.1592623821199;
        Fri, 19 Jun 2020 20:30:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ccd6:: with SMTP id l205ls4335227ybf.10.gmail; Fri, 19
 Jun 2020 20:30:20 -0700 (PDT)
X-Received: by 2002:a5b:14f:: with SMTP id c15mr10594658ybp.469.1592623820829;
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623820; cv=none;
        d=google.com; s=arc-20160816;
        b=AJ3LMHtfPIC5upCt+UdIHTvuzQJo0xut80evHbt/BInS8QzyX+S3TZTKcLhDleqZPy
         ybBG9HPcD9Dtbk6wDnwbMZwemG+aT9L2YUzX0JVlDm8Hai5MwPafzLYnsnlwmgFotb5R
         nnhHQTau4CssjGmM3lmBApDthFH+795JNZlsQY82pfMe9Ba5gvsV71gON6KIqOUFHAYP
         1pU49o0vewCOj+BQxxFuTpB7gpU6l/mVFEAjzCBDuHVeoWEDg0Cb1zg6B/LZ09V2zOa8
         FFFpecypGMDSC3sUTbOXfdWdMf88/Bnxe793rFByw6e4rMqDLGEmtmfCXEo1Ir3OtPX4
         qgQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Fi8ab2CkfvIdd/5P+r0S5dxyJT2k4tSVWykkUvi99fU=;
        b=GjoBhO52uKOAzOoPf/495c7J48YIo96S//pT0H88LcLk36IINySCTKL15oqeNT/fRV
         fRN4BJxJK0YByEYCdRppzfkcdQS6VorNmgEku1JlKyd9QWQgIJWnioWd8BSPb8M4cw8b
         yNN44runh52aa+9sZWRsdouNaYBYkZhm4hYgW4MmvHBNRVIcg5h5isvBqLvwVte4VreZ
         n13OGHNRGXrT3kBGSUr8tqI7WVKJkpDFvbCvgLVxeVYUAcKFsrqyyFkt5MujjucupZ/C
         tj8abqFdpNrVq4hUFwOurWFvZ6QEG1hYta+in0VO9KRCn/XyU21VQ66XZE7GHajYIMeA
         dNvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j8nQ3B7F;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id u126si547225ybg.0.2020.06.19.20.30.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id s14so717023plq.6
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
X-Received: by 2002:a17:90b:3614:: with SMTP id ml20mr6333214pjb.41.1592623820052;
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p19sm7198155pff.116.2020.06.19.20.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 01/16] docs: deprecated.rst: Add uninitialized_var()
Date: Fri, 19 Jun 2020 20:29:52 -0700
Message-Id: <20200620033007.1444705-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j8nQ3B7F;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

Nothing should be using this macro, and the entire idea of tricking the
compiler into silencing such warnings is a mistake.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Documentation/process/deprecated.rst | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/process/deprecated.rst b/Documentation/process/deprecated.rst
index 652e2aa02a66..943a926ecbbb 100644
--- a/Documentation/process/deprecated.rst
+++ b/Documentation/process/deprecated.rst
@@ -51,6 +51,24 @@ to make sure their systems do not continue running in the face of
 "unreachable" conditions. (For example, see commits like `this one
 <https://git.kernel.org/linus/d4689846881d160a4d12a514e991a740bcb5d65a>`_.)
 
+uninitialized_var()
+-------------------
+For any compiler warnings about uninitialized variables, just add
+an initializer. Using the uninitialized_var() macro (or similar
+warning-silencing tricks) is dangerous as it papers over `real bugs
+<https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/>`_
+(or can in the future), and suppresses unrelated compiler warnings
+(e.g. "unused variable"). If the compiler thinks it is uninitialized,
+either simply initialize the variable or make compiler changes. Keep in
+mind that in most cases, if an initialization is obviously redundant,
+the compiler's dead-store elimination pass will make sure there are no
+needless variable writes.
+
+As Linus has said, this macro
+`must <https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/>`_
+`be <https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/>`_
+`removed <https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/>`_.
+
 open-coded arithmetic in allocator arguments
 --------------------------------------------
 Dynamic size calculations (especially multiplication) should not be
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-2-keescook%40chromium.org.
