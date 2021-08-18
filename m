Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQWG6KEAMGQESPFAMKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BEC3EFA93
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:55 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id l4-20020a9270040000b02901bb78581beasf656445ilc.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266754; cv=pass;
        d=google.com; s=arc-20160816;
        b=IgPpZY8uwV9rSV2g3ieB2tHsOyQFoOIBNWQYgL8MMok3IJnFydOAnpYuZFlhpRnK1n
         g95xjKV6W6sBzvz0t0aA0bCIBSbJ5kmk591pzPWMYr0Zz1Gos0rMyip3R0swGQld3hep
         ZptfacNMLMvMz+g7eHs8MnLw/3AjT4aRoPoUoD8jPTz7pqV82/itEoPyZRfnryL6t208
         l4n8ejjIglg6u1tX8AW0NmD9PYsNe9wh6HGPGezYYHCfIn+/v6BHudsEHd6OIcz/PUEf
         8i+BNHpYrt/iOqJc3FreDnxQ0g7pkARlM/Zkubm8/BTu/Ze+m00AdSOrF5pJOy6pE2ml
         o6uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XJqaPGc84tLrFTKgRo56MI6yzhL8z91relIi7mTVj7c=;
        b=KHJJhYV5htdzkLJmT1beJ2+DZECmA5YjeTECEbJP01y4NsfBU/puRh4nuck+98P6S9
         8RqmOK2AO8Fi7erDvW3+oaVAQkY/mtSLFWsx8GHrk5AhjEsMz3GCnZ5R/TBv23WBiId6
         njpSlKU7rNqvW1BJjz9/ODQD4ZP/ZKdwY+UVHnB41YDLlco155dhsokiBQ312J5kAM2S
         mUYXRVdZNJZ+/atWd9SyMHLosRyYGbdRl7lS2MlbZ3FPjk9CrjrsfCSlDffRi+kf+Q83
         GyJEd4BxTErv0M1mavQN0bh/vDFWmbbg/FHg3MYPJ+tjO9sBrgU2w6q4VTUW/KrRGkS+
         eiyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="XMP/StYU";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XJqaPGc84tLrFTKgRo56MI6yzhL8z91relIi7mTVj7c=;
        b=lw9JF52PzKdWbHR+cH4sd0oLYjTOathAR0xw1oAH2q6MqUyf5bfY0kOAHx/IC1E4S6
         gk0O46axloml6l/Kf6lOXdxq3DnZ7SH0zSX/jbhBS1vwcmPlyN/n6qF1FFUxkID9prO0
         AJ3hw7/qWrD5+e+dlgvqEvPqIbU886hOoJYyFbTH5JGjwbP5BSMyRDTztnwjwvXMF3Lu
         PiK2z1YcSFL2Zu+y0LeXrDduHjaUgg9+qNBPXfo6CLGbUZxAbr/HTqjHIB2rMmT0L2xH
         pw/csOrenmBuc7XDmO+p2BQFBnvNPYBysQ7VREtIfObpN1OKU81rxSJd5pCezd3DHFTR
         huCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XJqaPGc84tLrFTKgRo56MI6yzhL8z91relIi7mTVj7c=;
        b=Db/bvMXlmD3D6pmZo4HUWwJNUQjTf5ZOzFVkGr2T0DFWBa3l33mV00cVsgSJ0ck8mg
         rBCJMZmJBhTbB06m94x4NThEujv2NX8+dLdRYzpr6RnbYfmlLeKtAfVMSCRZFAGUNBcT
         5lGEtXgXyZSCU9y0uAKPo/DP3dlV1jlI0b87QIx2vcO0uI/srCNcWo8DR0/WPyIw0r62
         KMmvedCCw9vwGDK0Cu32yZ9VeQ3H4Kj25YkwQoLVGSSh8I945Gknuwo02eSn6u+yURXa
         N2Yi6RI8DkZrJQfU+bZzEE+a0Z4XWDTxK6ElmfOo6qOeCmjTBIuTqCHxtwTULyig7aqp
         HjTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dPuiPB/mK3IXEypZteNVlu0Wtfpg3+3gIr4YQDpqFkG2oYgLu
	rQ2uxTlGY6Vt0rD3ct5N/EY=
X-Google-Smtp-Source: ABdhPJzvv2zL0B0871cSwFCjM6RSeU3XOojdO/LyymOe3WV19oKC5jQJLaOLrp3j7mDlLDljnv0QQg==
X-Received: by 2002:a92:7312:: with SMTP id o18mr4882253ilc.56.1629266754224;
        Tue, 17 Aug 2021 23:05:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:81ca:: with SMTP id t10ls202636iol.0.gmail; Tue, 17 Aug
 2021 23:05:53 -0700 (PDT)
X-Received: by 2002:a5d:9707:: with SMTP id h7mr6103538iol.28.1629266753877;
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266753; cv=none;
        d=google.com; s=arc-20160816;
        b=Qi+U/NLRdeIEmiUM4XFLt81aZakYBSO4FDdnLNmuLYxd4AYEhDCFMwKhDrlVBAjN+T
         TZqyjYtW3zFDqnvMVMWzCdCOv9XyQkLJOuzli0/q6SkqydHdsDn3Sj00IwRyx1XSqxDP
         NYE1R6846basjqhIUXHxh5upcTqOQK77ZagI9J6GQ0RlTAPdvBx6XpprCZOXX9L+XRcI
         0x3wu/v4zCVZapu3ZIinhQ2Gw+fow0EgmFoyYrsE3nri7Zxv8y888qWLK83I39R6cUUs
         5lVj5UprZZoeZUpdvTpMlbgS4GJwZoywmDXZvktEUHx3yJY5GhJCkIhpw4dqTnH81kEK
         y2/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=q4cKFwd96rtgoKUA6YKX4IuNE9lx/g0UxBcz1pPF338=;
        b=0GcqiNf7zXD3/FZpXiIvBSZ83MzdaiabDnCtEDUcokiAquoobHf3WRKO0eIlnwDQyM
         xcOdwb0FenYJym/dZoM7P7MaAVGSRlqh+5XJYpGYz1gwmMSRGHjWzjVzryXhYr58uy60
         b5PKZUkdbj3d5Ttzhb5vNix/XfyVRaI2lXGftVZz0ivjaqRt6nXOxbyv95bOazKy3G3Z
         8Yqk4QmmDCHBtqy57hx8a8CehCq+8RUljqMeMdWjeyoSKJ28KEGJOQNgIgxD6T6XgiSV
         h8iOXy9mBToScCBqzhkfPmY2IBaayNJcWKY2R1gCi/IyiVSjXinypIz/nodGP1F+VvPe
         i5iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="XMP/StYU";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id z12si337628iox.0.2021.08.17.23.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id j1so1923804pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
X-Received: by 2002:a17:90a:c244:: with SMTP id d4mr7684531pjx.38.1629266753333;
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j4sm5379890pgi.6.2021.08.17.23.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:51 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Ohad Ben-Cohen <ohad@wizery.com>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 03/63] rpmsg: glink: Replace strncpy() with strscpy_pad()
Date: Tue, 17 Aug 2021 23:04:33 -0700
Message-Id: <20210818060533.3569517-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2189; h=from:subject; bh=zEHqpi3jCPJJtimsK7NnbA6EWwLoFKP9r9dL5ArZyiQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMe8xrKEUyyynWY+9ZZnkpsPM1eYEwBqySCGW3z U2JTvZSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHgAKCRCJcvTf3G3AJsNcD/ 9XTm0UNtLhF3pcJlIGQ3OBX+21oX4i3rCVVUF6tE46BnLDEeTE53Dgx2PT3pmkaqnzHQEBiWdAf3D+ 2ibPEIWXlwbj/FEpJcA5DcOhIfEfnzVBjHhlpnJrh3SUlVbIH9XtzFjtsdZ62/6vRCWqqArv25gvTH 5vxwJnbsrBQoJVmDrGhqBbXkHwDMfTU3uqjDwaqLe+Jkddl6WDrvL7HDi/a/O+TPG8Ryye+tkF8oUf ynPS+GUMYS16FY7ASzH/0ByS7HnPSf7jbXyCDl9CItMWBCukRuP92dgD5E5h+780QjYVR1TOYTsK7L 29q0KYIRAz/CU7s7NU3I6O+skA8+wO2q8V/qNN9IwIYlovEae8xYxtZGFKS7Asnkx5L41BTHNAewGa ywsnWka4jG//fkzAcJxqaWp/LNz7YIf4ftOs7TahiCUUPyNjn9hGBXe/6UCbulNetUvkUh3MpYNLgO 29/PcVY/jHQm6XmFOLai05ukoMYzOImxjihjBRnvhun0ISzdDvZiF7LuyX34tnTNoUqw0tPYmoyzzS qwS895l/S/Iu0aJ6C60OCVKPU+rRZE7aqmw0H4xtsS4EhelVEbtCx+EFSZg6NR+iqtNBvI80hwpi2k l928h0W2SY4eY/GnEj658aM4Rs5DKGjtsLy4poujBDA8Ehq211Zk9Xhct33g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="XMP/StYU";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

The use of strncpy() is considered deprecated for NUL-terminated
strings[1]. Replace strncpy() with strscpy_pad() (as it seems this case
expects the NUL padding to fill the allocation following the flexible
array). This additionally silences a warning seen when building under
-Warray-bounds:

./include/linux/fortify-string.h:38:30: warning: '__builtin_strncpy' offset 24 from the object at '__mptr' is out of the bounds of referenced subobject 'data' with type 'u8[]' {aka 'unsigned char[]'} at offset 24 [-Warray-bounds]
   38 | #define __underlying_strncpy __builtin_strncpy
      |                              ^
./include/linux/fortify-string.h:50:9: note: in expansion of macro '__underlying_strncpy'
   50 |  return __underlying_strncpy(p, q, size);
      |         ^~~~~~~~~~~~~~~~~~~~
drivers/rpmsg/qcom_glink_native.c: In function 'qcom_glink_work':
drivers/rpmsg/qcom_glink_native.c:36:5: note: subobject 'data' declared here
   36 |  u8 data[];
      |     ^~~~

[1] https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings

Cc: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Ohad Ben-Cohen <ohad@wizery.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-remoteproc@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Link: https://lore.kernel.org/lkml/20210728020745.GB35706@embeddedor
---
 drivers/rpmsg/qcom_glink_native.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rpmsg/qcom_glink_native.c b/drivers/rpmsg/qcom_glink_native.c
index 05533c71b10e..c7b9de655080 100644
--- a/drivers/rpmsg/qcom_glink_native.c
+++ b/drivers/rpmsg/qcom_glink_native.c
@@ -1440,7 +1440,7 @@ static int qcom_glink_rx_open(struct qcom_glink *glink, unsigned int rcid,
 		}
 
 		rpdev->ept = &channel->ept;
-		strncpy(rpdev->id.name, name, RPMSG_NAME_SIZE);
+		strscpy_pad(rpdev->id.name, name, RPMSG_NAME_SIZE);
 		rpdev->src = RPMSG_ADDR_ANY;
 		rpdev->dst = RPMSG_ADDR_ANY;
 		rpdev->ops = &glink_device_ops;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-4-keescook%40chromium.org.
