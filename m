Return-Path: <clang-built-linux+bncBCNODNHUQUJBBVMFT3VQKGQEABL7BAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A393A12DD
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:46:30 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id l7sf1002583vkm.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:46:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567064789; cv=pass;
        d=google.com; s=arc-20160816;
        b=euLOTIdKfIIW9GEFV0mKYPoqrbUUDNBZJYUoJyLl5c8V+RwnJmcpoBZ5kZhDsXw9p/
         N15sCspnQgSFo3WHntQcRw6kuOQEN093Ue9gr1hK52JJHz11y1M7mZ2Jnxi1pFqE1bf2
         yVrq+h6vu7hwdqcbTlIqtCYMPJvrjWOukjBZCJ0J1B5o89oPV7LqNSLra2qp7Swrpcre
         +VP1A4pXD/pHWTMUV6637EndTxpWaPhhRx1M5Ht9qgiNnNKgodYJln/Md6gqy9130enI
         KYFhI2TXfJY786odn+wXbt7wheQH2vUxAyJKKBA/TNTeJ8bux44+ZqN9K5fvY8siyfJE
         80qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=w6A8yqoS04iet/E26Mol0x6O4amdfrfqw5A8M+EXK/U=;
        b=LUKg0NGgluvhpEt0i5CWQq9mwhENj2yAzEbZ9Em3tZXHR22hmVXe/Qw5LPh9WaOUEm
         WU4Q0X2EOFCkGD13rb8r6afLw4gF7iQAQYcrGXpmeE8SWQ8aA+hk3Sj/+DOhSw43bw1r
         pClBjRwPrrh+sv7q6tDmn4z9U8co/U7IVa1BeJltv8IduRukxPT3n0vRN9HXmThWf7IY
         LW8vtodrf0LAiWb/biliPzJWcsoDFX1AKqecH/Di9e7N2M0ZNpiPk3bBEk1grSFSubyB
         TWm9IC/Yh6uPlzZv94CklDFiWtMQCSCTuZc/qhw59uRgFdirK+Xc0ALjk7gSyWa385yc
         Ge1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tRP+YIfj;
       spf=pass (google.com: domain of 304jnxqkkaggygxgbgtgqmuumrk.ius@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=304JnXQkKAGgYGXGbGTGQMUUMRK.IUS@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6A8yqoS04iet/E26Mol0x6O4amdfrfqw5A8M+EXK/U=;
        b=tFg8WEjXYi0VcGe7KJQ+1Jur6b03f+3ptSYXusYVitAprrUiZPFKhlty5fkhA2AA/f
         mWjHFocVoB/gwWPfV9Q9Kz79oDjCAxhgBtjBYzcsuJe5zrW0k8NTLc5c/OebK5EorAhD
         aUo/XNEqRvAEqKNV+HhTqy4vd64f0Dpucx+x601BNcxFDXaykqdvL1tkxNhm+UrigEWq
         XXpw1A/HOiZeekasYv0NkmRCaodx6Rzf2UT0sLY5tPpbLv+hQoy70MbJTKVrk82fC6+H
         zUnXpJkY/9b25g+B82sJhpCG2Oc1R8CrPfET0jR9p++GBNqF4aPWt6EDXxW8zz8chvAF
         vG3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6A8yqoS04iet/E26Mol0x6O4amdfrfqw5A8M+EXK/U=;
        b=WUMiyAEq3TcQWBHWdfc5rH6F1bGktv+CB9SzhR+1wIDxvpG35HJEVbJG9tEbGL45Aw
         nig1nvMwyWKVUZPptSZESWY+xtQdElpHqEWL70pb4hd62CIv1+S0R7RjN1wbjzRhai2T
         aDhga3qByXEJC/GHEbl3FKZVmvu7mqYzBHUtC6MBzWIPn87zSR23hYKbj+aLm6fFkQIz
         QH1rqtZBBklKdNKKrk9LESKa+0vRJ/F8nMJ4FX07LyVT/kOi1PFUfy4ogTc/QzBkW9lF
         gl62s2t/hvkQRzhDVK1Oq9CKBD8r9Ygb6nQoKy6u5gVzfoxuD2lHtBqX5bRBM8IfpOFN
         cLPA==
X-Gm-Message-State: APjAAAW6kBqrrPTaToYDIR61Y6S3OE0ritMiFGXlERaoh2zT8+QDYRNf
	t97VTxO3VueqJjiOewKduDc=
X-Google-Smtp-Source: APXvYqxxzP7vPrMLmehfOWLqiq6afrcXADoMhxixnKFG4wqzTxlE3TvKCLU5aWZPw19s0XP/VNrgCw==
X-Received: by 2002:a67:12c1:: with SMTP id 184mr4646430vss.222.1567064789478;
        Thu, 29 Aug 2019 00:46:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf09:: with SMTP id y9ls195768vsl.4.gmail; Thu, 29 Aug
 2019 00:46:29 -0700 (PDT)
X-Received: by 2002:a67:347:: with SMTP id 68mr4749108vsd.35.1567064789254;
        Thu, 29 Aug 2019 00:46:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567064789; cv=none;
        d=google.com; s=arc-20160816;
        b=e66S/pE0FVt6x79vkUlgKOl/kkNKquefcxLRq1W5yJzoPcIHkX2idMl5i0YOWt1yAR
         wmYrtUm6pKLSzaafPt5GYKCtCJ6Z2OOr7w+tfP+acS5MQsiPj7l6DjSpQlVkTyU3s4db
         RrJFbb529CUaDnocVdPtaJC6mccBBg+rywhUQAMhryEw1D59nzqQdFJncnF110Vx4K0P
         pBi8p1vgH2Z7ae6EPV9mBNRbRZVYHy4LvTPK2cyPbscGT2SHk7D1O4nBAJJXdX4RnDhe
         OIR99YLvvniSNneVHXMWuNWWC2+gcNRGSpxE4Fy6rAjJ8wkKWgpZVlQrU6aqkf+9Qnyo
         2/Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=1wMjA5KSksLju2OI40VA1ZBlTUCnvvzsw6vzsXA8A9k=;
        b=t++mGpLvsCi0TpGf2jXNjS87CKMI2Ht7RSpXHgJzI5i8Q2c7vT89qFPyD/HY+smMQr
         Oq9/fFnYhcd1sSIbuVdtYOinUUyXj6VPoHaozG8bb2EUtS9ZXfwma7K/X1naWjfRkhHx
         VGVU66BoyOFp1I1ie4VcKT8WtbSAXm6kD1wVyoZsOR+sVQJgMrnxEP1NHF0KPfEDp3f7
         RSZIVIsC593RX5p1+grWgZR3yM7Zy9X0gikCNqVA5gEMJOHrm4/nsfidR/YdtCOofvv8
         zztRrfT3WiAxN24D9+VVP21nFRCCY/xUatschNmUQS2JE6aOFnp9j/9RdMYS0O74TkVZ
         voaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tRP+YIfj;
       spf=pass (google.com: domain of 304jnxqkkaggygxgbgtgqmuumrk.ius@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=304JnXQkKAGgYGXGbGTGQMUUMRK.IUS@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id w19si77971vkm.3.2019.08.29.00.46.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:46:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 304jnxqkkaggygxgbgtgqmuumrk.ius@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id o21so1499330pgd.11
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:46:29 -0700 (PDT)
X-Received: by 2002:a63:e948:: with SMTP id q8mr6861702pgj.93.1567064787979;
 Thu, 29 Aug 2019 00:46:27 -0700 (PDT)
Date: Thu, 29 Aug 2019 00:46:02 -0700
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
Message-Id: <20190829074603.70424-7-saravanak@google.com>
Mime-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 6/7] dt-bindings: Add depends-on property to break cyclic
 inferred dependencies
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	David Collins <collinsd@codeaurora.org>, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tRP+YIfj;       spf=pass
 (google.com: domain of 304jnxqkkaggygxgbgtgqmuumrk.ius@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=304JnXQkKAGgYGXGbGTGQMUUMRK.IUS@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

The functional dependencies of a device can be inferred by looking at
the common devicetree bindings like clocks, interconnects and
regulators.

However, this can sometimes result in cyclic dependencies where one of
the inferred dependencies isn't really a functional dependency.

Add a depends-on property that can override inferred dependencies by
explicitly listing the suppliers of a device and thereby allow breaking
any cyclic inferred depenencies.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 .../devicetree/bindings/depends-on.txt        | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/depends-on.txt

diff --git a/Documentation/devicetree/bindings/depends-on.txt b/Documentation/devicetree/bindings/depends-on.txt
new file mode 100644
index 000000000000..e6535917b189
--- /dev/null
+++ b/Documentation/devicetree/bindings/depends-on.txt
@@ -0,0 +1,46 @@
+Explicit listing of dependencies
+================================
+
+Apart from parent-child relationships, devices (consumers) often have
+functional dependencies on other devices (suppliers). Examples of common
+suppliers are clocks, interconnects and regulators.
+
+The consumer-supplier dependencies of most devices can be inferred by
+simply looking at the devicetree bindings of common suppliers like clocks,
+interconnects and regulators.  However, this can sometimes result in cyclic
+dependencies where one of the inferred dependencies isn't really a
+functional dependency.
+
+When there is an inferred cyclic dependency between devices, we need a way
+to explicitly list the suppliers of one or more devices in the cycle so
+that we can break the cycle.
+
+The depends-on property fills this need. It can be used to explicitly list
+the suppliers of a device and override any inferred dependencies of that
+device.
+
+This property shall be used ONLY to break cyclic dependencies.
+
+Optional properties:
+- depends-on:	A list of phandles to suppliers of the device.
+
+Examples:
+Here, the inferred depencency would state that cc2 is dependent on cc1 and
+cc3; and cc3 is dependent on cc1 and cc2. This creates a cycle between cc2
+and cc3.
+
+With the use of depends-on, cc2 is only dependent on cc1; and cc3 is still
+dependent on cc1 and cc2. This breaks the cycle between cc2 and cc3.
+
+cc2: cc2@40031000 {
+	      compatible = "cc2";
+	      reg = <0x40031000 0x1000>;
+	      clocks = <&cc1 10>, <&cc3 7>;
+	      depends-on = <&cc1>;
+};
+
+cc3: cc3@40034000 {
+	      compatible = "cc3";
+	      reg = <0x40031000 0x1000>;
+	      clocks = <&cc1 10>, <&cc2 7>;
+};
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829074603.70424-7-saravanak%40google.com.
