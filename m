Return-Path: <clang-built-linux+bncBAABBKGV5X5QKGQEHY2GAMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 80363283EFE
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 20:49:13 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id f199sf10479681yba.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 11:49:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601923752; cv=pass;
        d=google.com; s=arc-20160816;
        b=YLbVIRRfzZOY5pErhYhFoD5n9/iibHlwjwF6nBD9iCuSmMGvsQfQIQfR1VtelTrzFy
         j4klc6bvVzu/prSL2bsn3sz+GV+i7ZInsShECYTHr7xQho4BdTp5UQi4JNL0jaA5txv1
         qatTz5mCJVgmAmxtUd72Ma1SVUSQ4y8nHQ92ey71wmSyMokfK5/Y2WIYxGFGTiGlZW96
         mCpUhTykHmek54vbUZprXvv3I++/EqYnMSax6ALJjIY08Pf8Trm9NJBRZXgrN9wtu1gb
         oDs3flRHJYMUwPyMSbgvv5ODa0TtDlaCV9BHYddGoph3u7qLdYlN7u6KqxC5snpdTwv/
         nMBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=sFqCAf/OhW/KXKVEKgvTwm784NJWdXIwPiV6gI3aE9c=;
        b=abpf4W6XLrX3xVGhr6/R8SGn4joEdvFrf5pwqeE1Es3PxOatVwJ9TIYD/5zl+u4VBp
         RAmI/3paUohzWL3EDxNIjIgj7ddew41SqblbfXDg5VgREpNiJikFnoHS2X/v+L754wbM
         vArazbfLe06gdadCtNu4dp0Raxs47zTL/z/73mmePTlA0dPcfXeX4iPDNgmX0T11dhsV
         olHxOS8Y6geZxKAuvCZkl3RtdAple6by1dSHFgJOqukEw3afJ9dXoZz/SNO5YJlRxQWk
         io7WGyHzSdYRQTQiPVTK2rD/7SisMGqHCdk5U48fRqLJ7ry8NDC40MPArMYtrv+PxUKF
         3tUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f8P0BfJ2;
       spf=pass (google.com: domain of srs0=q8+s=dm=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Q8+S=DM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sFqCAf/OhW/KXKVEKgvTwm784NJWdXIwPiV6gI3aE9c=;
        b=oJ+5LGMnaac5/JUm+e38bMlXC8nROP1WAfZYCLnbfHPXbYlTQKCWFBYVLdLYaz7HJ3
         S9zZkJhNWRuPi5GMowj3KKUxulDulZreIoKYd77ZwaEyWef2FVRPrwIQnutyQbMZlMN1
         wpDL+hB9Eh0kYWe2PLUHfKxLm2BPfuDg0TkdEnku2+7N5vii2r6t2lkNZSyPAqf4nJA5
         o//6NF4ufo5TD+NdiZxsjKpXIFCcyfofCS+umWxdKlCK93at1rd8qTGkgke8BZ9xRPrj
         AQVKxRifQSMa+hReZIyqhZedMaBqCUBK692dJt1j7wR7+rFTJtpOli22S1KwrPC4J/I/
         ZSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sFqCAf/OhW/KXKVEKgvTwm784NJWdXIwPiV6gI3aE9c=;
        b=dOdE9wY7cpziiF/N6JDkep/EUsW8eKuw7D5we/fIuf8ia7aquc6NjSZNiXM5SjL9BU
         dlJO08TB6MDLhIMEhykBK5iO0GYTN4g34aPjekq1VpOw+fWjlDiQ2bnSmzdlmfmxff/1
         KtulrWUvQsQMXkisJaztH1fIpasflKM/7N0R7Z6asZzckHbA2igrUF+E+V3ZBrw8Bbj9
         jMIGpfzuHQ+NM/BuDcw8o/xmOdYIYOfNMAHXlPrvuXaJWZ4LDUrc3jvL0Ok75hsyUS7d
         4ASTd8e6cemigc9ah9x4lxstVymLv4dXFNAXcZIzK8xxt+nzdOdkzO/CzWaSAR3lu+vp
         3jeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xJvN8gv6gYfraE1/OIOPIxvf1+3x4sGM2Lsg7dGYu8hHKRhua
	4FZQlEBvDULLNwM/d8T8lro=
X-Google-Smtp-Source: ABdhPJwc0fmZboNXBxYyIXqVUrkcXUf4i/WC32hh3tBhwauHf15MerZGVLf20T86WOeHo8VYTthybQ==
X-Received: by 2002:a25:868c:: with SMTP id z12mr1787766ybk.195.1601923752280;
        Mon, 05 Oct 2020 11:49:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:20c6:: with SMTP id g189ls90893ybg.1.gmail; Mon, 05 Oct
 2020 11:49:11 -0700 (PDT)
X-Received: by 2002:a25:df09:: with SMTP id w9mr2092276ybg.109.1601923751770;
        Mon, 05 Oct 2020 11:49:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601923751; cv=none;
        d=google.com; s=arc-20160816;
        b=JUMmyoo4G8sEKjatn40s0UjnhDA/PBChbgXvVzp+au3oF5NaTqCoEJbbYrTnqh+Gbc
         vJ7UFQ8rfAjYI6Ihao6I9HFy1QfyeOuWh5aWXomGZVQz/lAAazvFeyrJGSVqZnHOf58I
         rTko2o3nawKbR1oNDjoy38lFg5hAwzll3IQkNoPj1njgRQIm1TbD4GlCF1sYabbl7pf+
         r5AhU1f+AjUAsdjb4rSWcaXByectFKfx6FePKFIgiNYNXDnwDgNa8SMN+g6L+26wwK9F
         ObtxDQOnYalWQC2fXN1cc7a+dTWrj0RAb/Pg02lIImkQHG9eO4rgFmnMR70lLh3Ez5EP
         1jhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=xDvorivGvlQ3Q9lt6Q8vid9LRa4lbr0moDasZB6Q1gY=;
        b=iEcV7vA9iKkH48eVLDenci1cjCmWHMZXYTWpsSw+P2JkD4SBMOHYb76s/LN7+f6HhW
         nwF+J+y3yyq8ONsDqQRSukkD8yWJsuANW55wklD57qWj1NNBh+0wchYjer0m7QmvShp5
         tGOIzGOcby4vNSddZBEJEKOTNoi4gO3ai5MfxTy8GDa4wqUufWnpsgbxs+285ETIC+H3
         8uuN3NTWcFFXJm7xq9yNWuV39suFWJ031UgFFBql8/Y9OwNSAYlhJiuMYOGAdD8vA5Zf
         l7RrbKJELUHmkzAtpGM+ItuPm/71CvNPACdfv2Gn20Aqz16D2dLHvKdWvUW6UhQZKMaB
         Cg+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f8P0BfJ2;
       spf=pass (google.com: domain of srs0=q8+s=dm=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Q8+S=DM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s7si69310ybk.3.2020.10.05.11.49.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 11:49:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=q8+s=dm=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-104-11.bvtn.or.frontiernet.net [50.39.104.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A6ED820853;
	Mon,  5 Oct 2020 18:49:10 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 558E6352301E; Mon,  5 Oct 2020 11:49:10 -0700 (PDT)
Date: Mon, 5 Oct 2020 11:49:10 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
Message-ID: <20201005184910.GC29330@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com>
 <20200930204044.GZ29330@paulmck-ThinkPad-P72>
 <CAKwvOd=nabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q@mail.gmail.com>
 <20201002205130.GK29330@paulmck-ThinkPad-P72>
 <CAKwvOdkPMSwQneMLFNg3ihM5zHorFy+uGvzAL7y70+hu_1q24w@mail.gmail.com>
 <CA+icZUW_z5nJ1c69JS7Nm1QknF+CH+sPkhF4g2+L=d=H-vxVgw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUW_z5nJ1c69JS7Nm1QknF+CH+sPkhF4g2+L=d=H-vxVgw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=f8P0BfJ2;       spf=pass
 (google.com: domain of srs0=q8+s=dm=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Q8+S=DM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Oct 05, 2020 at 08:38:42PM +0200, Sedat Dilek wrote:
> On Mon, Oct 5, 2020 at 8:29 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Fri, Oct 2, 2020 at 1:51 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > >
> > > On Wed, Sep 30, 2020 at 01:55:48PM -0700, Nick Desaulniers wrote:
> > > > On Wed, Sep 30, 2020 at 1:40 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > >
> > > > > On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> > > > > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > > > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > > > > they treat section names that contain \".
> > > > > >
> > > > > > The portable solution is to not use a string literal with the
> > > > > > preprocessor stringification operator.
> > > > > >
> > > > > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > > > > Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> > > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > >
> > > > > I am guessing that this needs to go up with other patches.  If so:
> > > > >
> > > > > Acked-by: Paul E. McKenney <paulmck@kernel.org>
> > > > >
> > > > > If not, let me know and I will queue it.
> > > >
> > > > I could have bundled them up as a series.  I think you can pick it up,
> > > > and I'll owe you a beer?
> > >
> > > It is queued, thank you!
> > >
> > > When does it need to hit mainline?  (Your default is the v5.11 merge
> > > window, that is, the one following the upcoming merge window.)
> >
> > No rush, this patch wasn't blocking any known issue, just a cleanup
> > while I was in the neighborhood.  100 years ago, I was an Eagle scout.
> > Pretty sure there was a motto about "leaving things better than you
> > found them."  Thanks for help resolving the merge conflict reported in
> > -next related to it.
> 
> Wasn't there a problem with your "Fixes:" tag (Fixes: *drop word
> "commit"* commit_hashid ("...")?

Indeed there was, and I have it noted to be fixed on my next rebase.

Perhaps another reason not to rush to mainline though.  ;-)

							Thanx, Paul

> - Sedat -
> 
> > >
> > >
> > >                                                         Thanx, Paul
> > >
> > > > > > ---
> > > > > > Changes V1->V2:
> > > > > > * drop unrelated Kconfig changes accidentally committed in v1.
> > > > > >
> > > > > >  include/linux/srcutree.h | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> > > > > > index 9cfcc8a756ae..9de652f4e1bd 100644
> > > > > > --- a/include/linux/srcutree.h
> > > > > > +++ b/include/linux/srcutree.h
> > > > > > @@ -124,7 +124,7 @@ struct srcu_struct {
> > > > > >  # define __DEFINE_SRCU(name, is_static)                                      \
> > > > > >       is_static struct srcu_struct name;                              \
> > > > > >       struct srcu_struct * const __srcu_struct_##name                 \
> > > > > > -             __section("___srcu_struct_ptrs") = &name
> > > > > > +             __section(___srcu_struct_ptrs) = &name
> > > > > >  #else
> > > > > >  # define __DEFINE_SRCU(name, is_static)                                      \
> > > > > >       static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);      \
> > > > > > --
> > > > > > 2.28.0.709.gb0816b6eb0-goog
> > > > > >
> > > >
> > > >
> > > >
> > > > --
> > > > Thanks,
> > > > ~Nick Desaulniers
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkPMSwQneMLFNg3ihM5zHorFy%2BuGvzAL7y70%2Bhu_1q24w%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005184910.GC29330%40paulmck-ThinkPad-P72.
