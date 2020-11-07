Return-Path: <clang-built-linux+bncBDYJPJO25UGBBENGTH6QKGQEOKFU2ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C66FE2AA316
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 08:56:02 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id h7sf1645373otn.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 23:56:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604735761; cv=pass;
        d=google.com; s=arc-20160816;
        b=0TnWkodrvSeGYSD2Am4j1vIJkw4qkH1QUIHVYshgPM346Soft0JVwnNs/3oQ/0PgbS
         9npc4GuwVGwvQLxxUb+uPJJVgpq05znFT9YE2YjclkqCBMK7T6zCxJK6qDZCx2b41eSl
         YYWAoXKEEu62gKsqJSHBjJPqLpi8tr3Cgi+hIjkwWMbN/wue5lQAhgme00C9heSWcqo4
         hbpjPVTlBIv44THWXYbTs42BCllTCQxLJR8s3+5xIsvzMgACxAB8ylCl++lWopvJVF5D
         9/dsIfPiWLuoaPsNAa/sGpkgflDQjkdjXvJqSNsYpYtVYkI7f5kIylEYP27iX0k5edY8
         guKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=EltKhFh7cyRxrtrHS9iE3zQqyxOEY7OASK7S9Bb2uzg=;
        b=qYUo0liePmZVmzRHiHXe/1SwXvVxggn1uNkGwA3rikSyKvAfi2jp9mzf0/Le8FTN3I
         05lMUYCV2WajdOlAP15IY4vzEccSdT+B0U/afW+qj4qvk2wCSMffqh/SIIT/gSr1Lv5M
         y/tRB11LR0/2HzNoCqg9tnPqRTzeSt8jqus2jm8hDqwmBqVhBP/jCpMrVnvVPwfQgUmG
         zj/s/LzHLN+iUcAOS+OGIZE4N6htpBrKQfG+CszpHYif1onHrKYEzVEZ8pO2L/gm78YH
         FnJ5w4Go5OJ+JJjHtI6y9h4O0N/UMIO9snLhZsPrDf1E/5ruXvo14ASiuLvFO2Q6sBLa
         Xgtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u1aTvZxA;
       spf=pass (google.com: domain of 3efomxwwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3EFOmXwwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EltKhFh7cyRxrtrHS9iE3zQqyxOEY7OASK7S9Bb2uzg=;
        b=Rr0hJsw2dlJ4uanBf7ALJFs7SlevkpsEWK2YJxy/x/IaVqKIVYQBiMOflx0VLMPvwt
         F+FHazhYCSVkKiBxWjKTG0LjHAEqSzcwr4QPWrRLocRTCHXMvWLqGAdvR6F7sfmimNy7
         kG3wItWjF+016dZeWLQ1SIn05nzLuXwf2k9fiRF68WmVbbSb6iKRqyxDGjY6auyb5YXn
         ZJO8qs2ueeePYWfDWaNNboZLxsOab1C7Np98gIldsJaYYnUt5UWU3OMIQt/+qIru7Z9E
         FdAAKZPOlZog9eKfsRVWZpTgaxjMfm4du4S6z7SN+lM9hy881YkGBEUFbj2U3FeQ9EvX
         vs+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EltKhFh7cyRxrtrHS9iE3zQqyxOEY7OASK7S9Bb2uzg=;
        b=MG1R+je801bzVLh5wjbhBAox4tRvHzgigG3jsib+75/FO7M9F3ZyJGg10UB1FNxFJo
         lAjAgKvG4IxJBC93e79NvUMr3C/Ht7GND+Upt/HAShrFoN/PGtPgI95yMO5Zh5rZzV/Z
         1H+epgSmeeHOZArjK6L6ICcK+NglH6KyRj1fVzMivUSlbz963TSJQbKcQJmFkivSHYrW
         6Y7ToOveX/Z2TkT1y4giZ8CxQLIW0i2wmSP04nUdsbzPnNnA1d5y09F1soT/SbahcBz2
         brRILepw6FLhFuIlPZSl67kOyINAcoLi9C5rMKUxSDOzQlG3lf5HB3PKR8UHPrpch5lb
         cSoA==
X-Gm-Message-State: AOAM5325pZ4SrnqhoLeELxpuDYWcGpHKmuZg5/9UWTtwkXRmC5YZwt+I
	xX0oOda+QbF29vl/JUtglDE=
X-Google-Smtp-Source: ABdhPJx2XvV05SHLdI8b8pyXtzrOtXlSc9WNcYS6o1al4sYfeFkgHYyw/FDk1LNCzCrr8RFO4SGaOA==
X-Received: by 2002:a9d:133:: with SMTP id 48mr3486950otu.142.1604735761508;
        Fri, 06 Nov 2020 23:56:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c694:: with SMTP id m20ls230545ooq.8.gmail; Fri, 06 Nov
 2020 23:56:01 -0800 (PST)
X-Received: by 2002:a4a:e4cc:: with SMTP id w12mr3764883oov.36.1604735761039;
        Fri, 06 Nov 2020 23:56:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604735761; cv=none;
        d=google.com; s=arc-20160816;
        b=eFJVRprzRN11roTRhqoV1zfkjJ7GzWOnhb+AGvhlkJhq/jouzD+jYw4LOlibcH+89F
         hUHUWCkIa1AKXXSteoQkX1PZ4vek4igppmO2By8TlUERhG7AtNKEKgBSafYH0bn+kRXE
         A7zAqkECg1yczS+yK4sr2JyEAjmcLE1zE/cBS6k1cJnnT+5+UW/v4lxhVXjR0i8jclA6
         eOKRev3JLREActHL3t/v4+gmAxhJGn+KGJvCk1jhDEaE4qG1VPdTMv0MjvZUDQkJIcVX
         zPneTTvzdDjVxz1DQa3jOfc8ge64ilmiZIWEiVXiLEdJyrWA3Ccq0ihZ5o8HJYui143I
         xUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=jIeEqn8DjifdijUbE9P+939DFnPxPOakX6eDafn0MtI=;
        b=XOqny5dpo2+WBnlR/KAfa79JQcMnH6XkUVe6Y29zYmI5UNgb/SHCFcj5y/YIy/JZAT
         TpLVa8XQIk+H70LHg+lvMtzboRg4Rfduva85YTlFUtStqPYt8l8h0R5l3d+lMciP40ZI
         fJ645hKz031YYJoYaPl/NEdBmAouyGMFu1HVpRUouRERr/kR1AGGVTfm7RJ/gjOKpEQc
         uG7T3HCM/vqDgM2VtntnXIzKTVfqRwYa2+joyBI49CFuu8sMr/IOHbUc3q7uC1Y1Jt/X
         KGK6Sxfewjrm/tk3y1abWfn8HbJ1u2127S5g97eB/lRePyHQrjcUtgoEQesTAjZjzCZc
         NXVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u1aTvZxA;
       spf=pass (google.com: domain of 3efomxwwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3EFOmXwwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id k134si179397oib.5.2020.11.06.23.56.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 23:56:01 -0800 (PST)
Received-SPF: pass (google.com: domain of 3efomxwwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id o135so4443264ybc.16
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 23:56:01 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:7811:: with SMTP id
 t17mr7217154ybc.450.1604735760577; Fri, 06 Nov 2020 23:56:00 -0800 (PST)
Date: Fri,  6 Nov 2020 23:55:50 -0800
Message-Id: <20201107075550.2244055-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] netfilter: conntrack: fix -Wformat
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, 
	Florian Westphal <fw@strlen.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u1aTvZxA;       spf=pass
 (google.com: domain of 3efomxwwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3EFOmXwwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
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

Clang is more aggressive about -Wformat warnings when the format flag
specifies a type smaller than the parameter. Fixes 8 instances of:

warning: format specifies type 'unsigned short' but the argument has
type 'int' [-Wformat]

Link: https://github.com/ClangBuiltLinux/linux/issues/378
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 net/netfilter/nf_conntrack_standalone.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/net/netfilter/nf_conntrack_standalone.c b/net/netfilter/nf_conntrack_standalone.c
index 46c5557c1fec..c5aa45c38eb2 100644
--- a/net/netfilter/nf_conntrack_standalone.c
+++ b/net/netfilter/nf_conntrack_standalone.c
@@ -50,38 +50,38 @@ print_tuple(struct seq_file *s, const struct nf_conntrack_tuple *tuple,
 
 	switch (l4proto->l4proto) {
 	case IPPROTO_ICMP:
-		seq_printf(s, "type=%u code=%u id=%u ",
+		seq_printf(s, "type=%u code=%u id=%hu ",
 			   tuple->dst.u.icmp.type,
 			   tuple->dst.u.icmp.code,
-			   ntohs(tuple->src.u.icmp.id));
+			   (__be16)ntohs(tuple->src.u.icmp.id));
 		break;
 	case IPPROTO_TCP:
 		seq_printf(s, "sport=%hu dport=%hu ",
-			   ntohs(tuple->src.u.tcp.port),
-			   ntohs(tuple->dst.u.tcp.port));
+			   (__be16)ntohs(tuple->src.u.tcp.port),
+			   (__be16)ntohs(tuple->dst.u.tcp.port));
 		break;
 	case IPPROTO_UDPLITE:
 	case IPPROTO_UDP:
 		seq_printf(s, "sport=%hu dport=%hu ",
-			   ntohs(tuple->src.u.udp.port),
-			   ntohs(tuple->dst.u.udp.port));
+			   (__be16)ntohs(tuple->src.u.udp.port),
+			   (__be16)ntohs(tuple->dst.u.udp.port));
 
 		break;
 	case IPPROTO_DCCP:
 		seq_printf(s, "sport=%hu dport=%hu ",
-			   ntohs(tuple->src.u.dccp.port),
-			   ntohs(tuple->dst.u.dccp.port));
+			   (__be16)ntohs(tuple->src.u.dccp.port),
+			   (__be16)ntohs(tuple->dst.u.dccp.port));
 		break;
 	case IPPROTO_SCTP:
 		seq_printf(s, "sport=%hu dport=%hu ",
-			   ntohs(tuple->src.u.sctp.port),
-			   ntohs(tuple->dst.u.sctp.port));
+			   (__be16)ntohs(tuple->src.u.sctp.port),
+			   (__be16)ntohs(tuple->dst.u.sctp.port));
 		break;
 	case IPPROTO_ICMPV6:
-		seq_printf(s, "type=%u code=%u id=%u ",
+		seq_printf(s, "type=%u code=%u id=%hu ",
 			   tuple->dst.u.icmp.type,
 			   tuple->dst.u.icmp.code,
-			   ntohs(tuple->src.u.icmp.id));
+			   (__be16)ntohs(tuple->src.u.icmp.id));
 		break;
 	case IPPROTO_GRE:
 		seq_printf(s, "srckey=0x%x dstkey=0x%x ",
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107075550.2244055-1-ndesaulniers%40google.com.
