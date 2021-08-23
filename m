Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUN6SCEQMGQEEXVM7IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id A19903F534F
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 00:21:06 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id c2-20020a92c8c2000000b002246dcb2b5dsf1407385ilq.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 15:21:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629757265; cv=pass;
        d=google.com; s=arc-20160816;
        b=naYfF5fjuKCv9OsRxVr8NCG0n3D2RDug4p/PYeZHoESd7Y81hJn0QsZ2SmwvFP/qPK
         tK0GeUk2PObwKyRAkS4FGvdlqvq3J4UJqatiRz9W7OLT5QFEjX4U8ZYWYCpCpOOQPQjx
         eLOwznbM6e7sXfOUa5tKpB6d2iFYDDVZCRHmli4BS3hMDkWH/Qbo8g4zR4/4b8npS9Mv
         EPygADQ1z782Lfu0CfDiGiDcs+Bt02Jmz1EYKMjskijcTqiNb8RmrgDxt6Qtg0CS8DuJ
         aaKS27RPnQ6rsKhmy5i2ged4cIZfMUZuvMVESlFabgBZ7SBLbPW2RaDYEptV2fAcSiMJ
         snUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Ynstk3kHDGCn4Aop1c0XUd3g3EupGqUwckWfgj6ZSkk=;
        b=iWl+UbOXRPQcXpM+O3C/C65gfvW8oRozdrIRKubmf6CVJp9vs/Tlv8f6obfaaMGNHm
         9wKVa00t39PrKWue7kzjQWmtOLN84AcH+oeFBmAmPETgc+KpsmfAT4wAp5t7fou8/zJM
         y+KbzdA8K4cyKNcSJiLppZzagZKxEpKXS5flefIaWVNDL7uhRXrw9cuH+TfWNYTU1BFF
         n1AkXutMaYEXbKh6MGgG2DbVTdEkqSdYSVToh8NkXP+PLqqFmC/ga2LsXWdhn9AcsiDA
         YQXzUe6kz1lkj9ZeXffFjIYGKz9kJApLN++Tj8vDGROwQKeNZoFxKL3OjCu4EB3c05PV
         /HEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="e/1yYmL+";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ynstk3kHDGCn4Aop1c0XUd3g3EupGqUwckWfgj6ZSkk=;
        b=muSqtqj1V+iIJ1h2de1AiKF0pr//h0ph6tHr7au4douB1DJc0ciRijZkEG0JkyykiC
         fpIfOeyEe0SKJByxcly7bw+iWOjPe166nqyNv2IDicPQXbD7ojlE7XZF/a+hu9IdjU5B
         QN7X5FqyCoh4XhZ49f2Fza5ioZqVIu2dEOeikveyPVivR10DaoG8JE5E3n0VP0sr90IE
         /xOtkdZSpKj8GX6sesXoN+4bAZPFPr8INH/d7D2K64NmJ6fWcxZhaI+CZRflvAvkbc22
         hUdf8OJI9Q4cJQ0sX/XI/oEWFJ9lRjFjvcqMWANLhT2nt3l1WEtalqDL8zl2xSClvFVQ
         qqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ynstk3kHDGCn4Aop1c0XUd3g3EupGqUwckWfgj6ZSkk=;
        b=LP4TmH7PL9/m9BjtHAv7NtatNoDpBn1CiRREUDfi+g634MvOXn6Ig3Zdn0K2S8vVJK
         i5HUs1jNciQEjUdY+f9uBCprYhyfrIdTahy+Et0y3rICHhL66rB0xcJd2MHdSNWFLT9v
         zBaMzjyLTJXi10InQJwr1i0GFOYnEQwx0ZKf1fUNbzxcVSsO9u9wTnbfhLQLIR9QrYfW
         PPhyLJi8ssiMf1tkwbqn5u+Rfef5+CyA2h9sWMAPuW3fATb/Tlbe5V+gDsxxW6h9Tbz4
         rbeH9VZdnoo/haoaoDe/PyIGkq/hwMgU6LrhBUGUiFkrgegyOrvPnHCzL6FpY6krGRjv
         slCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xTJR8l8pBm3he+YwXdifMyEmdjxDR6UzhgI0S+8hOTeiKNX0n
	YNTk4Ko5mkZ3kaB1VlK4Mjk=
X-Google-Smtp-Source: ABdhPJwBO79jHRksb5geZjc/Q6cJDFvx2oc3jeSk7hEVUeIWztk1RCeiRe+J2nNW0KE0Gl1qP/zK2A==
X-Received: by 2002:a92:c786:: with SMTP id c6mr24188006ilk.211.1629757265471;
        Mon, 23 Aug 2021 15:21:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:c55:: with SMTP id g21ls2365041jal.4.gmail; Mon, 23
 Aug 2021 15:21:05 -0700 (PDT)
X-Received: by 2002:a02:a709:: with SMTP id k9mr31178915jam.64.1629757265101;
        Mon, 23 Aug 2021 15:21:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629757265; cv=none;
        d=google.com; s=arc-20160816;
        b=YfcVS9tS1t87NlELWsLrTqZj54YTLxJEfg2+Tpg8l6UAPnR7vq9qYu3LMvULXf7VnQ
         25O9F5y8ItwkA/WJapK8SQ4MCw2rEL4z9Ny4gAT67q+YEzhO6h2lEWfbQK1vhDOojrCF
         XS+QarhzZmJX8xgKEfbj5Qfw4aIwGvSPseWCDnxMCbeKEvhG6YVVLF9EULR7CyG2QTni
         z+Jn8SuNuQHqaqO2g8c6Et7RZNCfiHTALWxGIPsRsihUlocTVrKB35bwtA20j+EhmAe2
         +w4hWN/0cymu1pg7kLilCmNwdFm+pIasfS9Y4c3s5s/hoB9ovmhM5u8emfW8B9OEEJDr
         4YfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/M0VH6oHtZHjmphEaAygLWA6yKROG8HAIzt1trNUkS4=;
        b=qlnYqJ6Cw7z2fLHoycEs7jZMarKJU/hTJyewC72oXqQ9gfNiBxNHoJ+vmFpYxjn3NN
         CVBfisPKkFqrBeW4+/bZOeqiaJWpEI8LMsvAhkRspeI86LPoR2WSEh4nzfneHCecwNay
         EhYT84VaH68taODRlT7KNIJehu5KLqtDoLqJ6MLb5mT8MMpKOLQbgPZb8VyTmbgJ5rpa
         ni29Brc+mNdoXFNtnWhG1vTTc8H3RsCkndxW89DUsH/U/RHIpc6/+asXTbLsTwNc819s
         1+s8nSG9DzzWvE0r0ZGTfxMnL/xlkDZ6PwmGI6H9kQj92Q+Bx1qOOiFJaLH6lwupVcTT
         Ud5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="e/1yYmL+";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e12si937907ile.4.2021.08.23.15.21.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 15:21:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A045B61037;
	Mon, 23 Aug 2021 22:21:02 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Ping-Ke Shih <pkshih@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>
Cc: Colin Ian King <colin.king@canonical.com>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] rtlwifi: rtl8192de: Fix initialization of place in _rtl92c_phy_get_rightchnlplace()
Date: Mon, 23 Aug 2021 15:20:14 -0700
Message-Id: <20210823222014.764557-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="e/1yYmL+";       spf=pass
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

Clang warns:

drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:901:6: warning:
variable 'place' is used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]
        if (chnl > 14) {
            ^~~~~~~~~
drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:909:9: note:
uninitialized use occurs here
        return place;
               ^~~~~
drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:901:2: note: remove
the 'if' if its condition is always true
        if (chnl > 14) {
        ^~~~~~~~~~~~~~~
drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:899:10: note:
initialize the variable 'place' to silence this warning
        u8 place;
                ^
                 = '\0'
1 warning generated.

Commit 369956ae5720 ("rtlwifi: rtl8192de: Remove redundant variable
initializations") removed the initialization of place but it appears
that this removal was in the wrong function.

_rtl92c_phy_get_rightchnlplace() returns place's value at the end of the
function so now if the if statement is false, place never gets
initialized. Add that initialization back to address the warning.

place's initialization is not necessary in
rtl92d_get_rightchnlplace_for_iqk() as place is only used within the if
statement so it can be removed, which is likely what was intended in the
first place.

Fixes: 369956ae5720 ("rtlwifi: rtl8192de: Remove redundant variable initializations")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c b/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
index 8ae69d914312..9b83c710c9b8 100644
--- a/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
+++ b/drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
@@ -896,7 +896,7 @@ static void _rtl92d_ccxpower_index_check(struct ieee80211_hw *hw,
 
 static u8 _rtl92c_phy_get_rightchnlplace(u8 chnl)
 {
-	u8 place;
+	u8 place = chnl;
 
 	if (chnl > 14) {
 		for (place = 14; place < sizeof(channel5g); place++) {
@@ -1363,7 +1363,7 @@ static void _rtl92d_phy_switch_rf_setting(struct ieee80211_hw *hw, u8 channel)
 
 u8 rtl92d_get_rightchnlplace_for_iqk(u8 chnl)
 {
-	u8 place = chnl;
+	u8 place;
 
 	if (chnl > 14) {
 		for (place = 14; place < sizeof(channel_all); place++) {

base-commit: 609c1308fbc6446fd6d8fec42b80e157768a5362
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823222014.764557-1-nathan%40kernel.org.
