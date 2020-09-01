Return-Path: <clang-built-linux+bncBDYJPJO25UGBBENJW35AKGQEATAKETY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D82C72584CA
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:46 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id cp13sf4288904plb.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919825; cv=pass;
        d=google.com; s=arc-20160816;
        b=LIte/VejcxSwDYa0WRr1V/7PY79UeaDCih82HerXXhuaR6cbgCmii3TW0rJkyY8jEh
         v2KWphsGkVmt3YV8uM5d0LmQvVuIa26G7anQUlDiIcXh9Bzy2I+Ekrrxj6yQdz+PjCRF
         F+XjtBMdpq8EFkimdl0rrxiMfEhVs/MMNzvvUzH5thKt3wFK6m7Q+gVrXR0uin42bfFN
         3TLdOikLyax/9JOxIB/h2iU7BxRofpmB73dtopAyRqtR7I2tXzOhamJhA3vuTw88o67m
         bhYQwOTMEs/dDwK9aOradCoiDTJqazCOy235e0ChD5UijFLbLW4wrYIURGS0DdX2T4dd
         hUXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Bai3/i1QTJH4voqrNftdToiYctqY6fyPN/N+hPp4fuk=;
        b=bzspGThm9Qap+rmgxhEPq/corgeD/4E1DDOv6fb7q1+L2SL6wLmw2YDWFgNxM9/Q14
         XjO4/CJZ0WY6irU8AydPAxHPiNhymK/3gm+7p1Zn/QcgsdnlAZQGAdJ+to0jEC20Ji6A
         Ind04EQazagfRJwjXIO8OOFKzoy0I2et/qAORHZ1sv/5cgi6whJUqdhu+4Pt5Kc3ByF4
         gFZhG0AfDrj0wBxQIS+1oY2lCYG9M7WI3XaWykPbq9XmYrshHi6yWqs9DErk9+UOe38Z
         WxBWgJr1MkuIcKLKb72gj8/6aFR4+gxCKL4oM04ml66n1G702Oo9J4/pmfl4KP5iKrhv
         74eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vh0MrWbx;
       spf=pass (google.com: domain of 3kjrnxwwkao8euvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kJRNXwwKAO8eUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bai3/i1QTJH4voqrNftdToiYctqY6fyPN/N+hPp4fuk=;
        b=XSi/jwNdMKFDPI2QxaSguF8om+7OsXlw3HkFKGDcdtlXI/DiOiQoRABrPxPGgdU1lR
         Z9htPhhc/qXnu7SzhjpQ0pVd9SHtGxqx49KMTHGPFyZtsyOOjZTNSCR3SfVoS14GVT60
         geMqxUKSqO70FtppcuTnYOhwnrMUtrKd0cbWsZ6kHEO5WnwTcAMnWXcUt9xxv0gIgLGV
         JBFc64DdXnWCKUftc57X+5CMtN3BI7KlXF5v4KOaMxivT1xT5hCjmyalO//ClTZLyhkD
         zRp1udfpig8fVov0YgI59LLCHSG+jAWNg5WUqMzB0eQcTTfou8QKHEUuXKq+t+PWFRW2
         mfsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bai3/i1QTJH4voqrNftdToiYctqY6fyPN/N+hPp4fuk=;
        b=B1+sc31FG6AQQCHHaTQlQEKksFLgqTKrfw+Zg4Uyf5MY8rSF5N2FPunfCfsMtch2cZ
         3U1BGr/L9kY8sJ7TNX7I+tXlFmQGJuasvUL99Jc09Cgp0ublVnJVkb30+9mVfdVgM8lh
         zig/Ad8Aedd8FnJbcYbEDyxPNWpqjvfwcctYOHPAbVZHjKMZZDg7fvyXXHvLoNaEtOny
         BznWfiW/SvydJFBSvVFSqWT7lijQt31RQDVbo/qMlxnx5cKGtnW/Fy7b3FxJMmQ1mbcN
         S9VGRFsjdgiL9H400kVu+OXSVMZgu293wnO5G5MPdLAUCdFbWyChOaz4kznC6i9qn/qr
         0oig==
X-Gm-Message-State: AOAM531K2q9RSD3glWDmwyvjeLM55h28C62rXC8AgDdwPGFwf/7J9IF5
	fy/WXdzld8EV7ckEcq1xqjU=
X-Google-Smtp-Source: ABdhPJwOJRp3jpJtM4g4xBH3kRinj634MNwrGI9/61gxLwDoOY1ZVEdR0SclnSGPFcFXhD+fBNqRAw==
X-Received: by 2002:a17:902:c1cb:: with SMTP id c11mr3042238plc.153.1598919825609;
        Mon, 31 Aug 2020 17:23:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b90:: with SMTP id y16ls4228162plp.3.gmail; Mon, 31
 Aug 2020 17:23:45 -0700 (PDT)
X-Received: by 2002:a17:902:8347:: with SMTP id z7mr3167356pln.20.1598919825217;
        Mon, 31 Aug 2020 17:23:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919825; cv=none;
        d=google.com; s=arc-20160816;
        b=Fk4ht4PDt2z2eM9QJyL8G5n17KUP25M9ZTvQqQeQebtifvXgh+h+BimO6V6GLqL8sq
         uz1ewL87LNlu8xshInXSxgU9Gw7CUwpMZdlPk3sCEwbr7x06MST5YpRtTnNdWk7mE5Qx
         P1fOQDYSQAvF92oX1pQyg8lF5AVG4hrv0L5ALJK+YdiYpNyiKKyc5ZQRm+qu6HSXvzu9
         03oq5fw8mpYHYPBD9sPcatTtTeu1v0nlW/Ld66pw2Tumsg1wCTrem27pzPRbTLVq0BTE
         7Dq799qXYHw87a7XZedBIZR74uuX27YO+IH/TB5Jxo82EoGHVOTfPLP/uT3i3VfLpcC0
         tl9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=90voGTWRAh9zyb+/yxZJ0Qpab+sDHCs4FBicC4wnAQo=;
        b=M3QNXYrR4KMf96kl9Z1vm0EvbykNOPZ/tepGCtYH+pMbnHP8x/29DMqtNRROOdLIPl
         Dl9ivh6lWDs48c9UHQSIC9z1a2QK3iirx1Ti9F2A6epV9GXfn2ULp7Tb91yehcS3Mmnf
         lj8xRjeB8770MxmkJra8UrA00VTlr7gSdiJRKpIMoE1oHTpRPYi6oAl9uQ0ZGWlkVEHc
         V7GjIJbYR0Ds7Be5YiVXnKK9oZ9d249prl7Le9FH06xc8wkPNZLdYgv5fsRA11nPDSFk
         I6dWBpKaeCBMeTmh3Dn4PNzyjScz3Wru0AfhIzMGQPyJp9enQNX8IXXQsVdiOtsd6D5K
         SKkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vh0MrWbx;
       spf=pass (google.com: domain of 3kjrnxwwkao8euvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kJRNXwwKAO8eUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id t13si506168plr.0.2020.08.31.17.23.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:23:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kjrnxwwkao8euvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id e12so549761pfm.0
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:23:45 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a62:7e0e:: with SMTP id
 z14mr3356377pfc.56.1598919824832; Mon, 31 Aug 2020 17:23:44 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:23:26 -0700
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
Message-Id: <20200901002326.1137289-8-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 7/7] compiler-gcc: improve version error
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vh0MrWbx;       spf=pass
 (google.com: domain of 3kjrnxwwkao8euvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kJRNXwwKAO8eUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
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

As Kees suggests, do so provides developers with two useful pieces of
information:
- The kernel build was attempting to use GCC.
  (Maybe they accidentally poked the wrong configs in a CI.)
- They need 4.9 or better.
  ("Upgrade to what version?" doesn't need to be dug out of documentation,
   headers, etc.)

Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler-gcc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 7a3769040d7d..d1e3c6896b71 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -12,7 +12,7 @@
 
 /* https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145 */
 #if GCC_VERSION < 40900
-# error Sorry, your compiler is too old - please upgrade it.
+# error Sorry, your version of GCC is too old - please use 4.9 or newer.
 #endif
 
 /* Optimization barrier */
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901002326.1137289-8-ndesaulniers%40google.com.
