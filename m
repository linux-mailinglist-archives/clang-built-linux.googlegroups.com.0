Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO7EQT5AKGQE34BBFGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B0324E802
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:57:00 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id p26sf1048868vsm.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108219; cv=pass;
        d=google.com; s=arc-20160816;
        b=umSO2iM8LEt+fFpLajH1ihs82gbMBc6/CPFfzTbYBdCwx/SCEkzWZjavnNuGZsy38n
         ytXUcwIlE+SdOdhskaJxS8PPWw4qyqEtlwcUEposQ70m6DXsBQ/FiZjkNbuAiSigLtNo
         slmw3buYo3E//MCy3ibv4+vUKorWV8Amo+fPcm7dFy5JbO1Hgiht+bE7Tej6PNtEsM//
         gh5O8SfVQrtO0CktLRCsac9+V0EPKV7TEu8laQ5AtgoztO+e7oD7nFMdVhp2wn9Sgde7
         IYvPolw93tcMnMwbNAsH3An0YbN49i+5aF6kghoB7ybpXdxLPZMCjfDFEtNFTd+5VAX7
         3tBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=+7c8IWpROYxntoOF2U1oGcho+3iYquHR7avRdex2oSE=;
        b=Kx3WvDy7c+3Z8BrVvfxdAD7DOmtVsjTY87hjaAGwRa9rIe7YhoTtPicOj6+n88azDr
         ZDnO0JjN7cjPxXhG7hhh1HvaXEpPG3NxI1NUYkSzhgC5nu/G6NiGG1XDywiaGcrA6aHd
         ouWtvXH45cINq+LS93CbS5uxapTbfUrfgQTzZaa44NbJGj41vL7Cf//QWB52kGypHGKO
         1CXvnQ6WRhd3Ad71vnRpVpb6osL7CznwoPmP7ywqr2fTunbqnTAJ9daz7NN8UVlv1dzv
         zd8//XTun5lI3lFIq140J6T9K/xtDs6Jzmh7imyPPSfrv/7xxws8/TyWPtQ8mSehssFk
         IQnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=C9+Lh+l4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+7c8IWpROYxntoOF2U1oGcho+3iYquHR7avRdex2oSE=;
        b=DVgssTjuY4KyStI7/+EIvx7I6sk7n+nkYWZbii0d/BoEF60hsUioW+btC3Bnf+jiee
         735p9LmDa/BTj7xwvD2ssGG3HQcgvveS9fI+uy2yPmnTthd+uhhJPvTJjC6ZlJPXKAhx
         XU+AenPXz+OQZQvkkWmPD4RQ7GFYlmZ4Jz5UAlzeRMjzXtWTfyps2fUqueyHpzPMQorR
         6RUuDe2qtOlFwsewKZnfA3ya8PWM1p/4GIlUDxMWChatC3P3WXL4RWnbRr4rf8dDC2p5
         jjY4q7Un4B/EWkb+9MeFngKWRQ6ZI4uG2PZhQJd98C6I+49tTlaN7t+IaW9P0mDjHuFq
         sqtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+7c8IWpROYxntoOF2U1oGcho+3iYquHR7avRdex2oSE=;
        b=B8VRr+r2HIlo9SxyW+e2+74t0ZsliH3kYwwflulgFya3ZK3+7eY8NGP7/HX9DQJ4Kq
         gli/oaH0PpluvNJP0sHcDeXWNl2Xa7OUrWCRJHRGQypOZrY2Fcoa4MaoiS6FZAtQ7XIf
         PR1GefNXOoQ8RUekuPhLybZ7EiMK7Zvt4NxxzBdNtiHuHnzSB++nCIb9ZGgrG+MI6XRN
         Q95bDbX02is7bayethCM8MDrXqbowYWAd3mdMsTbrlrV7/csZOUThKJwSFqt7Z64FY6v
         T6yiGP2eTM19vFkVb+lAtGfSm0Urz6xgPOYLKBRKxO9P9dqSjU011F+fx4/HPeDhbFzG
         h41Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aVxRdjdQdkzp8YiVlhqdga1rVfgcKsVqAsD3DsCVboNU1gcAH
	XJddNSQeCsN90hCuAuP29XU=
X-Google-Smtp-Source: ABdhPJx2Lnffre5YDwnYSL9khdMXa6yJfHrJ75FgI+MP7Z8hVpqhEscVERHmTUK9RhkTWm+uz8iL5Q==
X-Received: by 2002:a67:eb91:: with SMTP id e17mr4541091vso.7.1598108219153;
        Sat, 22 Aug 2020 07:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:308b:: with SMTP id j11ls336411uab.3.gmail; Sat, 22 Aug
 2020 07:56:58 -0700 (PDT)
X-Received: by 2002:ab0:2509:: with SMTP id j9mr4453765uan.133.1598108218689;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108218; cv=none;
        d=google.com; s=arc-20160816;
        b=s6BSMwadIceEhxzUwnSDSD9mdRB/O8wEXDmpQoM781HGjTuCqeuiuNG5Xt18YKMKC/
         DBvZTS4Y/EyT/WTKhO08vNPVKDOb1HZWRDMxh3j1r1g9jadMA6UkFJXnUiVHPX+WPP55
         L/Y6O53B/1PtMFvB4u/sHurHiblZzA/wDPtfTq3HG7O98SekKHBJOqcZm6KlmPIuyZ0e
         0UjJb767E+2NJOL7SvcfVH34lrKDFW2OrjlvIrLEdN8zYY/fWXInhY4HzDvaWSJtJPNT
         0tlvpNhZq5lmzpkws6SSSjKQ0UFXTYYhXfmOLCOlYjzCKXiKInv7layhXnkKbyhmtT/E
         iWqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=gGF1fPLTpTUcjBBymKMSRSRXlTzNhlWRVku6EwQu2/0=;
        b=Q6zXp1CEwYKJ8Sx1UPn6iyEnrumnkt+/TRMe2IeFqjdZTsjTp8PWJAAHsgHUgT8/6C
         bfgzbNFoiDhm+rTPp3WFNgys2CYu8ygtHReP91S4gi3Pw2Z+GNJRx9Zep2LHafe6K66o
         PfZG6nZqfJ11ICYAqW4lok9Wr8IVXtFL3y1aRD93Pnf9pX6ThgA3q6FgAENa6vANlClF
         dTBA9yDW0r7OsqSxfDK+//IxAr/ISD/csaUkpnycDVdAcOiV80+yYL13HjBj7zYUHBpc
         gnxKIiEiqrp5I8j2gBoyUCs8U7BOCwFpuK4GQQYwsr5EKoMllGhpldtna79KgPKbx5H/
         pe2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=C9+Lh+l4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id j18si301182vki.3.2020.08.22.07.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVY025434;
	Sat, 22 Aug 2020 23:56:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVY025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 09/10] gen_compile_commands: remove the warning about too few .cmd files
Date: Sat, 22 Aug 2020 23:56:17 +0900
Message-Id: <20200822145618.1222514-10-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=C9+Lh+l4;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

This warning was useful when users previously needed to manually
build the kernel and run this script.

Now you can simply do 'make compile_commands.json', which updates
all the necessary build artifacts and automatically creates the
compilation database. There is no more worry for a mistake like
"Oh, I forgot to build the kernel".

Now, this warning is rather annoying.

You can create compile_commands.json for an external module:

  $ make M=/path/to/your/external/module compile_commands.json

Then, this warning is displayed since there are usually less than
300 files in a single module.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v3:
  - New patch

 scripts/gen_compile_commands.py | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
index f370375b2f70..1de745577e6d 100755
--- a/scripts/gen_compile_commands.py
+++ b/scripts/gen_compile_commands.py
@@ -21,11 +21,6 @@ _FILENAME_PATTERN = r'^\..*\.cmd$'
 _LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
 _VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
 
-# A kernel build generally has over 2000 entries in its compile_commands.json
-# database. If this code finds 300 or fewer, then warn the user that they might
-# not have all the .cmd files, and they might need to compile the kernel.
-_LOW_COUNT_THRESHOLD = 300
-
 
 def parse_arguments():
     """Sets up and parses command-line arguments.
@@ -236,11 +231,6 @@ def main():
     with open(output, 'wt') as f:
         json.dump(compile_commands, f, indent=2, sort_keys=True)
 
-    count = len(compile_commands)
-    if count < _LOW_COUNT_THRESHOLD:
-        logging.warning(
-            'Found %s entries. Have you compiled the kernel?', count)
-
 
 if __name__ == '__main__':
     main()
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-10-masahiroy%40kernel.org.
