Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZFB6SBAMGQE6ZYRLHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id F031B349C5D
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 23:38:29 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id s66sf3681157ooa.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 15:38:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616711908; cv=pass;
        d=google.com; s=arc-20160816;
        b=LSMCGwyicxM+Syp7O6P76i4f/JT9WO+pwUT0oeOkAK4IVUdihVLcl2JPLk8uv83mRV
         FEvYCrlZ82ARMLzZl46+6TJesptHpwZMlE4+YBFxjiGJT5INQIDArKAJDr1IG9EQGvN0
         pXberTOyeUW1quhf7tQqj4mSLxMK3L9S6Xx39fkMqFROa9AqxBEd4zhJHfJd9C8rXrid
         7aDakIvQufJ2mP534DWi5l6IyQOLTnieGK9PRpM5IOGDENUJprQKAmrPAR3QDKLD7mGu
         RJ3H9z3DV834MkJ8knDBuLDe9x/eqxc2BXzFX7Oq38KMqNlxEa11d2k5vAOFfm6ZpTXr
         px6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9iaIqNL/eoLZJyhgtgMMQew3BvVGN+gtVu+SmYrex6E=;
        b=eu2KtZDV7HGrAXNoTSBLN7tmDBaFSIg3/vKxMWVxyF05ACOug/6B2s+6HWj+SFr3aH
         40T9cykxF7Ky/3venICSWPhWiVUOcouvox9+sPP1n3GOx9qnXD+h9Nf/sJo75ftckHn8
         KJ16vWOVg/RS7MwZstq6yAVlNGll5D7xTPkVrEQaMiburniSNbOqV4Hiq9J3Jbw7GMqs
         iS1EHi9Fns60EwsvSdUDREhjsjPURHA7Rbyu51npSqvwunaNmxsi34c8Dxpeu0A0P+4B
         shLAj6EHUdzaKJ6cWIJvB/NyDnBT8dq6CI0dT1u3poRzUSZNwAa3i3LjL3M2g0xMiMuR
         ciwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dRF7V82C;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9iaIqNL/eoLZJyhgtgMMQew3BvVGN+gtVu+SmYrex6E=;
        b=KpF0SQAhRX/gXQIZ2LTHZX6XFjR3XRQ5u/hgDu0beBHgkihQYbQDT1AazBg11rzwhy
         8meTY0Kt7dv0TivR2VZUIxYhm0+LBegsReowdTFFELHlQeKvSqO7C9q4z6GjyS/4pnlX
         fhbWPKb7XHl+4dTR9qAsqgLgmnDbmdI3BRw88vkm6r4nEos7SiL1P42y3L3Rv7srSR1e
         WEpGoDHdCJDHXnL4W5tJXeFkuwfrVQXM5Oh7yMMwiwIhelFIYtKtrQd3X1SsfmPyo+jB
         lGEuQr5Qx96h4vvT0uYTnY/wWtI6NbUG46EeicU4hU5oIiRygs6blPwhHJ9gujrU8XGP
         xloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9iaIqNL/eoLZJyhgtgMMQew3BvVGN+gtVu+SmYrex6E=;
        b=EsLG1Ky+8WHH/Dbn/YA+xA3hfn5bBcIrU3KU8wVd+Fl/uIvBwSSXOa6PryPJTj29XW
         8ddoTzwIYTDoh9gj0OJGESCkFhzzF4uUmJ4c/1SvACPXT9cy+Vqwaie28Vs9PkFGutRy
         stGsPVWZ3jajaeEj3Da7p71sZP+UNxMvKAeA9WA+RZF0x3vyk0tHUwZGHd8j26YQSViY
         L9Y2TXCJuS2ZgDSuZRS3WYy1BP0tTw2flyxvLKIPdgpt9nE1J/9HnPNauuSju972FiMf
         oJfMk8ug7IotDWl0MOMf4Xi1z43r+nmDzwLDLPrOOeLInMO6cGbhSWmy9hu7aTvmmSYg
         56Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kLeTmQbcz/3oYD3B4U4cYqa0Y0kWH9xCUm3ioqxYHJ7OW52D0
	3wZsxuH1eZFpREgS9B8KpN0=
X-Google-Smtp-Source: ABdhPJzv7QOP/kxtvVjWbiySyMJVFEQ7PYBlXTP/WXmsodDMGKkoiNg3gabNq8LtccuImW6luATdoA==
X-Received: by 2002:a05:6808:148a:: with SMTP id e10mr7644007oiw.138.1616711908685;
        Thu, 25 Mar 2021 15:38:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60ce:: with SMTP id b14ls1895974otk.4.gmail; Thu, 25 Mar
 2021 15:38:28 -0700 (PDT)
X-Received: by 2002:a05:6830:210e:: with SMTP id i14mr9306843otc.229.1616711908273;
        Thu, 25 Mar 2021 15:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616711908; cv=none;
        d=google.com; s=arc-20160816;
        b=WLq8I6CRB7cZwtfNd6eGwBHXn34dOTby44oDhajS8LgdhCCMx7GoB/gCpiozWww4CQ
         j4vuHnqsTvdcCNSVHtNZVDAra6lnmNXDtd3HG0ZHzWpSSWwG2GEE8IXb0KukcCliJW2V
         laNzQph2Qt9A/beJ6W1ueA7LawRhAW7Vq/1MUssMBk8ws5KU5xoMUzlVO/+1xPC3n7y4
         so1/jmtvryps+yyoKD1tJGlwNB2Jadj72XjS+Jir4H9itixDDiiFT3kN9ILKamhu9vO3
         7GEkn6Ou4xOVZ/a9QPv2fMbIp73sMf3jGASZILLwuCJkZ6dVHVT3TzEPELecf5Tv/Ps0
         DGJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=J3+RGtzF40QhDfagU+nYk1uClPO3XR1kP4GfFGGm5h0=;
        b=YcRmBw74O0w8oV8c90MW9jnOPh/iEirLXf8dFQPFi+wFTLQWgSXo71Hq9irxEhtrmn
         yyd31x30MdSFxBGPa+EDEH9Cz+RAHTNJMhpkUTShWO0jRD4zEMSZY/UP37nkjEP2VP77
         ShM5XEpc1gNOn9pyAdTj7TnhYaI2V/XUmlkjGbhFlYNARd/CuGho9EWpMPQTK2aDKjZG
         EdpDbUmYCwZAzy6DRlBoY29y49tFpPwqmqsfKqR2jEI+1T/4YNml1EN+iDnsGDKn6spT
         OupYscpsqQl7ZA2ZoAKA99AOo1Rje+U2Y5Rnlmg8nFgY44L1H12F33edz6eNwrAj592Q
         7bJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dRF7V82C;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h187si341795oib.1.2021.03.25.15.38.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 15:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ED2CA61A38;
	Thu, 25 Mar 2021 22:38:25 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/3] scripts/recordmcount.pl: Fix RISC-V regex for clang
Date: Thu, 25 Mar 2021 15:38:05 -0700
Message-Id: <20210325223807.2423265-2-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210325223807.2423265-1-nathan@kernel.org>
References: <20210325223807.2423265-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dRF7V82C;       spf=pass
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

Clang can generate R_RISCV_CALL_PLT relocations to _mcount:

$ llvm-objdump -dr build/riscv/init/main.o | rg mcount
                000000000000000e:  R_RISCV_CALL_PLT     _mcount
                000000000000004e:  R_RISCV_CALL_PLT     _mcount

After this, the __start_mcount_loc section is properly generated and
function tracing still works.

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/1331
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 scripts/recordmcount.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
index 867860ea57da..a36df04cfa09 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -392,7 +392,7 @@ if ($arch eq "x86_64") {
     $mcount_regex = "^\\s*([0-9a-fA-F]+):.*\\s_mcount\$";
 } elsif ($arch eq "riscv") {
     $function_regex = "^([0-9a-fA-F]+)\\s+<([^.0-9][0-9a-zA-Z_\\.]+)>:";
-    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL\\s_mcount\$";
+    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_mcount\$";
     $type = ".quad";
     $alignment = 2;
 } elsif ($arch eq "nds32") {
-- 
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325223807.2423265-2-nathan%40kernel.org.
