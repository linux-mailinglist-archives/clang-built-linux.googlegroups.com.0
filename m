Return-Path: <clang-built-linux+bncBCWJFEEKWIDRBHVXSDWAKGQEFLKEZOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id C84E7B8883
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 02:21:51 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id x26sf6034112qtr.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 17:21:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568938910; cv=pass;
        d=google.com; s=arc-20160816;
        b=byo4Na9k7Sk6Mzxxv34IbrbwkchLCtHuJa0We0g1klS286MowQ4tlKZZiaRZc9OpoZ
         IShTfeVsI8sghRu/Ql0HdVDGsAoLNecqjNJN9afxRoDa/rHEhaheIEwuGCS+PO0N15Is
         zN91/lHnMXpoeuLt8r3xj8UERp8k6Zn5G99jzdV1G0OQKrEdl1MXMh27dYbXtyBvjAei
         bwn8sTta7hnUtnXz9isQkI4ayLITzP/H/bwcbhzwrEtn6sETQEgy0SiY3yjSKLwpT6Ss
         Fpi+++gmGPV2vt6wLbJZnvXRYwIz0A/eer1TugqGgnnOKS79yqeaVlyXr2LsvCr06F45
         YCiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7S/JL45IBSsN7VpdKo9gWei6ZuLs+PnSL5KvpZM2MOg=;
        b=ovIng16YWelQpDgwlj2Gsiqdl7MmrJjPHy5rV2pPztUk+MH6szhcIwgQPPw/4z+Cco
         uqhI8w5wV3ZTGhizhe6s/c2QZvQpp9VqQloMI86xSCXnWkfXA1V7ZemncAU4Deuw1pZj
         o/ULcJgZ45f5VAiuyRu5NHDEk63JNa62WOO+MWXHuirGwmlQ1eDpQdktFc7D8RLlc/Ov
         GbBh1C5HuDWtBC/tgK3nfCTaPdDQF7+3bdxbHUwT12vWcdZHC45wfWb0wu1xcw22yURU
         pjwVBdY+fsAoshmCI6pg9DApTF5Xxm7LMCmfIWbIb5ikn9ED7OOhvjI5mB8chGJPUYaP
         ijyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@netronome-com.20150623.gappssmtp.com header.s=20150623 header.b=p1MWiAA5;
       spf=neutral (google.com: 2607:f8b0:4864:20::742 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) smtp.mailfrom=jakub.kicinski@netronome.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7S/JL45IBSsN7VpdKo9gWei6ZuLs+PnSL5KvpZM2MOg=;
        b=DF/h8uUyeXcZUXHv1ofxPXBZbkZ6koSGuGphiItcvspBcvh7HolKoCyjz5BWOvjlor
         pljI3ErW9zYA1ifZaOBPjJB0aMuqPkbRybHhiEwXD78hCpRkPQvx8U0d4z+4XwF98eCp
         RQJGgV66M1GCedh9Ac9bK5STwcouhJo7R49M4fPbXE5vYEmMj4U9dCopfUSxBo5STlhJ
         kAz/qoONhhndZ+e/8d5dx2johbuaQSdEmz9z+dK9TAUoMoBHU9LHEM3KaSKK/XGPC31E
         +pHxLafqF86lRYSf4T5GX9tHJxOGmd00bg8VqQ+DxqteWVKYbEyCDnU3d8BKxeqOddCS
         2XEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7S/JL45IBSsN7VpdKo9gWei6ZuLs+PnSL5KvpZM2MOg=;
        b=eTCx4nt3QMSGyb5Wz/tn2gR5ZcRjc7sLxruLQAmnwccUfPMPoNwCDHZorDzIKsSgyr
         C8skG6H/aoAIbvDmJJoj0vDYJ8bamJAnZcfgi7kFPvGTEdD27Inac/5PdQuO6ksDxTN0
         P558vIChj7y+kMmt7DSdI4VB3QPxS0NPpx6qaesK6yEihdhUbBRRRTsc7GRYolKHixnt
         PIJo9pshD2v5qHipTaqU5UOYVA8jQmGNe4927XJajqQ3YTToAupwxKX0sjyYLt1agzso
         WkGMQ/QEY5f6HWHNxFNBGuCr4/L98w8NaWC/McOAI5RQjG7zhEcWzEEwmmU7v82b22Iz
         MSHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUO+vJPzjFDA2hb2r3LeyY09i4hNI+MPAhcvz+D4PJUrlgtcXAX
	x/8aviX56RnQJIfqc42NyVA=
X-Google-Smtp-Source: APXvYqxbS1XWODHEbUnNXGGzyLChBWp/QgPtHiQVnRZsxwxr1rZSjdRUoyKG7HY9/lGyE2PkfUzSvw==
X-Received: by 2002:a0c:8ad0:: with SMTP id 16mr10480368qvw.237.1568938910298;
        Thu, 19 Sep 2019 17:21:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:102:: with SMTP id e2ls1707398qtg.2.gmail; Thu, 19 Sep
 2019 17:21:50 -0700 (PDT)
X-Received: by 2002:ac8:4148:: with SMTP id e8mr28859qtm.227.1568938910081;
        Thu, 19 Sep 2019 17:21:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568938910; cv=none;
        d=google.com; s=arc-20160816;
        b=m63Ja/uaH9VKMNBWfo+KrFI9ftjHa8MJ7O+f/2eSuCUXHU/IEoYdmfY8S8gfCu1syD
         fkbWmF5amtDnNfJbfoZyYABcomLiJ2F3JzPSLuPOINEngAA/y4dO2Sjml0Ph/QIks+SR
         TFibs59Iek7kkZBVGFrWVvjUHB1jMg7JklvrLQhwTrrEDqw48PImonjnyjba0/jFbwTp
         r4x5pqXVQG3PB/mKoDU4+OVxzYs/iPVFbitXHhvLC8EhL1x8hFZDKKL8FFOesJRyTOvs
         rXvM2xT6brYaJbdG9gib3jj1Ja8JEmuNktvMMpMdz0RslVHhHwlCNt50y8QAgydghaYr
         bphQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=pro9C8zmq7NLgMwYhgr/6LGSa3Q7PkAjnibnN9csKE0=;
        b=b2PyuHbp9GLEbjm2EaMaIKh7OdQ+yhkc4/j5WoKUVwo09SLVYiISlA0zi0ytFUaAX6
         GPlxC0KAyAqWdnQZLFbv9hE0TcxsfDGEi5g+UPbsuevRRMVmlj00ajXFf+DRrlaINsIZ
         qkg18Gic5701evC3GdthcbCxcjjLJQFqwfA/DfjsIlv+2N3crO2RVZlxFmVJ3sVUKjgT
         /K7a77LmxMjhuKeXQjtZn5Mxvwmrr4kpQFCXKLO1AVIN7BfIR7BAAUEB4jvVIfAPSZre
         DqSoXUrIEzslYsfawCQeNdZ/aU/twBGzcm0vD/VzEP0aTD3G56uhskzuGASOm+9O5bty
         T7Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@netronome-com.20150623.gappssmtp.com header.s=20150623 header.b=p1MWiAA5;
       spf=neutral (google.com: 2607:f8b0:4864:20::742 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) smtp.mailfrom=jakub.kicinski@netronome.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id w41si25485qtb.4.2019.09.19.17.21.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 17:21:50 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::742 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id x134so5481317qkb.0
        for <clang-built-linux@googlegroups.com>; Thu, 19 Sep 2019 17:21:50 -0700 (PDT)
X-Received: by 2002:a37:c441:: with SMTP id h1mr589905qkm.16.1568938909826;
        Thu, 19 Sep 2019 17:21:49 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
        by smtp.gmail.com with ESMTPSA id e42sm127840qte.26.2019.09.19.17.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2019 17:21:49 -0700 (PDT)
Date: Thu, 19 Sep 2019 17:21:45 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Shannon Nelson <snelson@pensando.io>
Cc: Arnd Bergmann <arnd@arndb.de>, Pensando Drivers <drivers@pensando.io>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ionic: remove useless return code
Message-ID: <20190919172146.47bc95f4@cakuba.netronome.com>
In-Reply-To: <6cdb1e21-44d9-bba9-1931-78f7109bff2b@pensando.io>
References: <20190918195745.2158829-1-arnd@arndb.de>
	<6cdb1e21-44d9-bba9-1931-78f7109bff2b@pensando.io>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jakub.kicinski@netronome.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@netronome-com.20150623.gappssmtp.com header.s=20150623
 header.b=p1MWiAA5;       spf=neutral (google.com: 2607:f8b0:4864:20::742 is
 neither permitted nor denied by best guess record for domain of
 jakub.kicinski@netronome.com) smtp.mailfrom=jakub.kicinski@netronome.com
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

On Wed, 18 Sep 2019 13:46:34 -0700, Shannon Nelson wrote:
> On 9/18/19 12:57 PM, Arnd Bergmann wrote:
> > The debugfs function was apparently changed from returning an error code
> > to a void return, but the return code left in place, causing a warning
> > from clang:
> >
> > drivers/net/ethernet/pensando/ionic/ionic_debugfs.c:60:37: error: expression result unused [-Werror,-Wunused-value]
> >                              ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
> >                                                           ^~~~~~~~~~~
> >
> > Fixes: fbfb8031533c ("ionic: Add hardware init and device commands")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >   drivers/net/ethernet/pensando/ionic/ionic_debugfs.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> > index 7afc4a365b75..bc03cecf80cc 100644
> > --- a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> > +++ b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
> > @@ -57,7 +57,7 @@ DEFINE_SHOW_ATTRIBUTE(identity);
> >   void ionic_debugfs_add_ident(struct ionic *ionic)
> >   {
> >   	debugfs_create_file("identity", 0400, ionic->dentry,
> > -			    ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
> > +			    ionic, &identity_fops);
> >   }
> >   
> >   void ionic_debugfs_add_sizes(struct ionic *ionic)  
> 
> This has just recently been addressed by Nathan Chancellor 
> <natechancellor@gmail.com>

Yup, should be in the net tree now.

> Either way,
> 
> Acked-by: Shannon Nelson <snelson@pensando.io>

Thanks for quick reviews!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190919172146.47bc95f4%40cakuba.netronome.com.
