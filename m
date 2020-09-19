Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBANMTH5QKGQEIJ633MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CF6271017
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 21:03:30 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id j7sf3756604wro.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 12:03:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600542209; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3eoNsWnhpL+L7cr9AzeCS1Xo7KwiZ/rERdaOAtncRG7wPCsO/ANuU8d4r/AISnlZb
         rWbLJc6ajNggajxMGF8hvxtajqtLZfcZTC1vuogNFGr0na0KG67p9UUBZyEi7meqeMPC
         JkyFjSUREbC8j0eb3OE0/pCYbHeqomzmfmZ/RL3FUOaKQWSHqow6/16vAqsokuRJEJt7
         rGyTqCNKGo9XrAvKqv85RrgPXjo9RCsLbhtj0UKgcHM9DKL8FkQgyOzDmFQa/KCXD82c
         szeI18AcFIGC0pBwK82GJydU2Lfe6f3mTMwGzWeZ3PpG6zTkL/xQI5aw/gA+ic6c23zp
         cZ8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=J7oo81dEacje1EXF78JjLYMEA6KuxQXMjvYniRGvjqQ=;
        b=ag0NKhDoC0EVkEi/EVqgW6/bvqC6dmpOBw88OXMxT+gMQnJJhgKYAXcrlDYXuprZOY
         N/L/M8bGVpiRnCoDsdhjmlESoFgBbkU6ws8T3NLWGGWQPTaRjZR9o74jFYQys3HU7r+s
         1gxlI/o9yUJ7B1FGBLfNh7mv8APSrFnfUzhXoPrGBP78T/ndpDYkzNEiKNNn7EZHyJtX
         NeqBBzFt4ZdozVPFw1blXSfo9IQvaygIWLk0eEiebeh7gVdUOdQlNhRmbPxvWMwZ8W3d
         WS1t6S/9r8qa4KQRQiX+DggwtkhsiEqmHFWp6m70OerEM6qfKyVEeW50NF+IUvKyVnjV
         NDmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J7oo81dEacje1EXF78JjLYMEA6KuxQXMjvYniRGvjqQ=;
        b=NXOHvD6eMoFhRkw7fIBgFrY1Z7IOUDqQkjsM+rljEqWBUfyK8ywKnkHa5X6Zk7SjH2
         LDemkLW2jewpQyOQB9ZGKVmkCMkxF4MjPgqujYX9mrX6wf6e4IPK3Lq5MvPNW2hzU/s4
         sTHnoUYew1xZl3vceDijEv/9IjAW19oAct8/0ObeztD2paMN2kxWqeF1USUFtDBScVaL
         5kDkX7eUqkFKiRLJw/DLKhwmqcNiyqoaBu+3YUh7/6yfsdl0P8Umi/R9uttlTF2SIhSf
         wrSloRbw6k0rqcO5S348cibtNEMOfim7XjYmaRDNY1pt4vBO9F0OWJXAPpj13n8z9tLf
         WjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J7oo81dEacje1EXF78JjLYMEA6KuxQXMjvYniRGvjqQ=;
        b=hrqGoXwwYeLS54Pbb92C8VBR7UkO/MvAcgyb+9v6C7cHh6tpabusnJGxqKgv1NoWxy
         o/igw/A+M7fsmwr9Q4MOSPherUhDkKdeVjDLVc5N9RurE+wzarCu6Nem2QWGpXLt8dvW
         TrEoEiP0T0MQBqOIlQ7oGNfDfwonWfM+H44eLIY/yC4Bbqs4umnX/Iw8xoKV8axWkEm9
         U99dPUIwgj28U7iffubc+bziBMQczUgDJcxSKUnp11Mc6hz2zEnysdO8I2lfxjMAh+4/
         +TfB/IYjvhfHcQN1Ou+NWXRKj3RZYc/X5af9MKt82vW9kdtR2Ftw029pH2BbO9Oe19bl
         58ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uxXdP7g8QqN4PrIFQcj0tW+5LmcF+9Twm21de2dwjBlucUugF
	Nj3LBaQvyGCTfyZd1OQrpMA=
X-Google-Smtp-Source: ABdhPJxEC6ZUBBCfuY+YJoVLfMBTko6YAJGLj6vpXLuCSc61iSp2VCMfb9lCXip1I1y0sR4azFkNIQ==
X-Received: by 2002:adf:e84a:: with SMTP id d10mr47077357wrn.66.1600542209718;
        Sat, 19 Sep 2020 12:03:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls3772385wrm.1.gmail; Sat, 19 Sep
 2020 12:03:28 -0700 (PDT)
X-Received: by 2002:adf:fc92:: with SMTP id g18mr47298848wrr.201.1600542208695;
        Sat, 19 Sep 2020 12:03:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600542208; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUPkKF1q7Hd+Doth4PTanQm+wxbSU+iufUeI2IUbYextGE5p5PCeZeloWMj0VL1CEn
         Jw1ErbHUkb7Sq8C8yU0GQwVF28gIVYhN07fjDTDIv6cKkWkgMSRbSFy2eLmY+CENQAKc
         bMzOQdy2k8PYuml2BoFTR20YB8vxis9IxVkKkayYjBpJv1kfSaCkQyLeuoflkz1Vdqo/
         kOpSCQALsVg3+GQZ41oI9f6+dnw3H2FxnEe9ymVIW2uGBjg04gLofldFGWJPG/6fBLwd
         fa5cn5kdb9+jVI4N00RLc5wdwDuR34tW2/NuVYn8NYUPRDaHm5MZBjSf9iylbw20uCYf
         cKZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=X/2ZuiicD871cJqrnjByktRdf/YQvLjQYXxC+PZx3jI=;
        b=bvPdzPcIbjo6LuVlLzF7A+3XWdx8J6XHze3Ug4nkG7P9LfY5GwocRljaritVJj6T3T
         jIdhQFB9B+gZO4uiPvEdLjRP9ugOcvfvkL0G3aEmjfp7rz3SrMuMSUiPYYV+0q5lmEZa
         tgpFIQp2adnOPufTQLjjVeH+KXmX6wDqw0fPQK6CHDSoATVZ8dhfL48YBqOSLJ5l2l6w
         K6ha35u0p22YZqgjXjv1aD5eBAN8ruq4TnGBd8hoHGIYxZP63ha14b4AQ62AF9vDeXyv
         8trSj9IwV7yYSxs0/s3mbBkDeSKYBpnQH2pVYumPK7qjkgKOIZQgN9M7lhmcjeAtIC1F
         Y90g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id n1si143013wmn.1.2020.09.19.12.03.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2020 12:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kJi8j-00FPah-Md; Sat, 19 Sep 2020 21:03:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: netdev <netdev@vger.kernel.org>
Cc: David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH RFC/RFT 1/2] scripts: Makefile.extrawarn: Add W=1 warnings to a symbol
Date: Sat, 19 Sep 2020 21:02:57 +0200
Message-Id: <20200919190258.3673246-2-andrew@lunn.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200919190258.3673246-1-andrew@lunn.ch>
References: <20200919190258.3673246-1-andrew@lunn.ch>
MIME-Version: 1.0
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

There is a desire that subtrees can enable W=1 by default. To make
this possible, put the extra compiler flags into an exported variable,
so other Makefiles can make use of them.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 scripts/Makefile.extrawarn | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 95e4cdb94fe9..bf0de3502849 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -20,23 +20,26 @@ export KBUILD_EXTRA_WARN
 #
 # W=1 - warnings which may be relevant and do not occur too often
 #
-ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
-
-KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
-KBUILD_CFLAGS += -Wmissing-declarations
-KBUILD_CFLAGS += -Wmissing-format-attribute
-KBUILD_CFLAGS += -Wmissing-prototypes
-KBUILD_CFLAGS += -Wold-style-definition
-KBUILD_CFLAGS += -Wmissing-include-dirs
-KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
-KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
-KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
-KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
+KBUILD_CFLAGS_WARN1 += -Wextra -Wunused -Wno-unused-parameter
+KBUILD_CFLAGS_WARN1 += -Wmissing-declarations
+KBUILD_CFLAGS_WARN1 += -Wmissing-format-attribute
+KBUILD_CFLAGS_WARN1 += -Wmissing-prototypes
+KBUILD_CFLAGS_WARN1 += -Wold-style-definition
+KBUILD_CFLAGS_WARN1 += -Wmissing-include-dirs
+KBUILD_CFLAGS_WARN1 += $(call cc-option, -Wunused-but-set-variable)
+KBUILD_CFLAGS_WARN1 += $(call cc-option, -Wunused-const-variable)
+KBUILD_CFLAGS_WARN1 += $(call cc-option, -Wpacked-not-aligned)
+KBUILD_CFLAGS_WARN1 += $(call cc-option, -Wstringop-truncation)
 # The following turn off the warnings enabled by -Wextra
-KBUILD_CFLAGS += -Wno-missing-field-initializers
-KBUILD_CFLAGS += -Wno-sign-compare
-KBUILD_CFLAGS += -Wno-type-limits
+KBUILD_CFLAGS_WARN1 += -Wno-missing-field-initializers
+KBUILD_CFLAGS_WARN1 += -Wno-sign-compare
+KBUILD_CFLAGS_WARN1 += -Wno-type-limits
+
+export KBUILD_CFLAGS_WARN1
+
+ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
 
+KBUILD_CFLAGS += $(KBUILD_CFLAGS_WARN1)
 KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1
 
 else
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200919190258.3673246-2-andrew%40lunn.ch.
